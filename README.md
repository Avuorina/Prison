# Prison

刑務所RPシステム

## 動作環境
- Minecraft Java Edition 26.3
- Fabric Loader 0.19.5
- リソースパック：[PrisonAsset](https://github.com/Avuorina/PrisonAsset)(非公開)

## 必要なMod
すべて Fabric 版。バージョンは 2026-10-17 時点で 26.3 向けの最新。

### プレイヤー全員
| Mod | バージョン | 入れる場所 | 役割 |
| --- | --- | --- | --- |
| [Simple Voice Chat](https://modrinth.com/plugin/simple-voice-chat) | fabric-2.6.24+26.3 | サーバーとクライアント | 近くの人と声で話す |
| [Sound Physics Remastered](https://modrinth.com/mod/sound-physics-remastered) | fabric-1.5.1+26.3 | クライアント | 壁の向こうの声をこもらせる |
| [LambDynamicLights](https://modrinth.com/mod/lambdynamiclights) | 4.13.0+26.3 | クライアント | 手に持ったランタンで周りを照らす |
| [Fabric API](https://modrinth.com/mod/fabric-api) | 0.163.0+26.3 | クライアント | LambDynamicLights に必要 |

Sound Physics Remastered と LambDynamicLights は、全員そろえないと聞こえ方・見え方に差が出るので必ず入れる。

### マップを作る人だけ
| Mod | バージョン | 入れる場所 | 役割 |
| --- | --- | --- | --- |
| [Axiom](https://modrinth.com/mod/axiom) | 6.1.3 | クライアント(サーバーにも入れると便利) | マップ作り。Fabric API が必要 |
