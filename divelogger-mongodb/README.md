# lifeengine-cookbook

This is the MnogoDB cookbook for LifeEngine. This cookbook sets up a MongoDB instance and configures it to work as the communication database for LifeEngine.

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

### lifeengine::default

Include `lifeengine` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[lifeengine::default]"
  ]
}
```

## License and Authors
