Minecraft Cookbook
=============
Minecraft のサーバーを立てます。
RC スクリプトを用意し、デーモンとして起動状態を管理します。

Requirements
------------

#### packages

- `java` - https://github.com/opscode-cookbooks/java.git で Oracle Java 8 推奨
- `screen` - https://github.com/stevendanna/screen.git

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['minecraft']['version']</tt></td>
    <td>Integer</td>
    <td>サーバーのバージョン</td>
    <td><tt>1.9</tt></td>
  </tr>
  <tr>
    <td><tt>['minecraft']['seed']</tt></td>
    <td>Integer</td>
    <td>マップシード値</td>
    <td><tt>empty</tt></td>
  </tr>
  <tr>
    <td><tt>['minecraft']['capacity']</tt></td>
    <td>Integer</td>
    <td>接続人数</td>
    <td><tt>10</tt></td>
  </tr>
  <tr>
    <td><tt>['minecraft']['memory']</tt></td>
    <td>Integer</td>
    <td>ヒープサイズ[MB]</td>
    <td><tt>2048</tt></td>
  </tr>
  <tr>
    <td><tt>['minecraft']['description']</tt></td>
    <td>String</td>
    <td>サーバー説明文</td>
    <td><tt>"Minecaft Server"</tt></td>
  </tr>
</table>

Usage
-----

#### minecraft::vanilla


`minecraft::vanilla` を node 設定の `run_list` に追加してください。

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[minecraft::vanilla]"
  ]
}
```

#### minecraft::bukkit

自前でビルドした ``` spigot.jar ``` と入手した ``` dynmap.jar ``` を ``` files/default ``` に入れておいてください

`minecraft::bukkit` を node 設定の `run_list` に追加してください。

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[minecraft::bukkit]"
  ]
}
```

Contributing
------------
PRくれ

License and Authors
-------------------

#### Author(s)

- Author:: dolpen

#### License

```text
MIT License

Copyright (c) 2016 dolpen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
