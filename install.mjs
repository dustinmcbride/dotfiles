
import path from 'path'
import os from "os"
import { cp } from 'node:fs/promises';
import fs from 'fs'

const userHomeDir = os.homedir();

const trackedConfigs = [
  '.config/karabiner',
  '.config/nvim',
  '.config/kitty'
]

const homeConfigDir = path.join(userHomeDir, '.config')

if (!fs.existsSync(homeConfigDir)){
  fs.mkdirSync(homeConfigDir);
}

const alreadyExistsInHomeDir = trackedConfigs.filter(p =>   
  fs.existsSync(path.join(userHomeDir, p))
)

console.log("The following are already install in the user's")
console.log("home directory and will not be installed")
console.log(alreadyExistsInHomeDir)

const configToCreateSymLinksFor = trackedConfigs.filter(p =>
  !alreadyExistsInHomeDir.includes(p)
  )

const configDir = (p) => path.join(userHomeDir, p)
const homeDir = (p) => path.join(process.cwd(), 'home', p)

configToCreateSymLinksFor.forEach(p => fs.symlinkSync(homeDir(p), configDir(p)))
