# divelogger-cookbook

This cookbook sets up an express web server for DiveLogger.

## Supported Platforms

ubuntu-12.04, centos-6.5

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['lifeengine']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### divelogger::default

Include `divelogger` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[divelogger::default]"
  ]
}
```

## License and Authors
