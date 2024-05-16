
// const fs = require('fs')
import path from 'path'
import os from "os"
import fs from 'fs'

const userHomeDir = os.homedir();

const tracekdConfigs = [
  '.config/fish',
  '.config/karabiner',
  '.config/omf',
  '.config/yabai',
  'starship.toml',
  '.docker',
  '.test'
]


const homeConfigDir = path.join(userHomeDir, '.config')

if (!fs.existsSync(homeConfigDir)){
  fs.mkdirSync(homeConfigDir);
}

const alreadyExistsInHomeDir = tracekdConfigs.filter(p =>
  fs.existsSync(path.join(userHomeDir, p))
)

console.log("The following are already install in the user's")
console.log("home directory and will not be installed")
console.log(alreadyExistsInHomeDir)

const configToCreateSymLinksFor = tracekdConfigs.filter(p =>
  !alreadyExistsInHomeDir.includes(p)
  )

const configDir = (p) => path.join(userHomeDir, p)
const homeDir = (p) => path.join(process.cwd(), 'home', p)

configToCreateSymLinksFor.forEach(p => fs.symlinkSync(homeDir(p), configDir(p)))
