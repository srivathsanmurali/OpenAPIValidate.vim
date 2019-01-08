# OpenAPIValidate.vim

A simple openapi validator plugin that runs the openapi-spec-validator on the open buffer.

## Installation
### Requirements
Install *openapi-spec-validator*.
```bash
pip install openapi-spec-validator
```

### Vim
Use vim plug to install the plugin

```vim
plug 'srivathsanmurali/OpenAPIValidate.vim'
```

## Usage
* Run `:OAPValidate` to validate the openapi file.

## Options
```vim
let g:OpenAPISchema = '3.0.0'
let g:OpenAPICmd = 'openapi-spec-validator'
```

## TODO
+ Write vim doc
