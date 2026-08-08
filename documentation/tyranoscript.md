Node.jsからティラノスクリプトを直接起動（プレビュー表示）させるには、HTML5アプリをデスクトップで動かすためのフレームワークである Electron を利用するのが最も一般的で確実です。
以下に、最小構成でティラノスクリプトを起動させる手順をまとめました。
------------------------------
## 1. ディレクトリの準備
まず、作業用のフォルダを作成し、その中にティラノスクリプトの本体（index.html や tyrano フォルダなどが入った一式）を配置します。

```
my-tyrano-project/
├── index.html          <-- ティラノのメインファイル
├── tyrano/             <-- ティラノのシステムフォルダ
├── data/               <-- シナリオや画像が入ったフォルダ
├── main.js             <-- 【新規作成】Electronの起動スクリプト
└── package.json        <-- 【新規作成】Node.jsの設定ファイル
```

## 2. 設定ファイルの作成
作成したフォルダの直下に、以下の2つのファイルを新規作成します。
## ① package.json
プロジェクトの設定と、起動コマンドを定義します。

```
{
  "name": "tyrano-electron-runner",
  "version": "1.0.0",
  "main": "main.js",
  "scripts": {
    "start": "electron ."
  }
}
```

## ② main.js
Node.js環境でElectronを立ち上げ、ティラノスクリプトの index.html を読み込むためのスクリプトです。

```
const { app, BrowserWindow } = require('electron');const path = require('path');
function createWindow() {
  const win = new BrowserWindow({
    width: 1280,
    height: 720,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    }
  });

  // ティラノスクリプトの index.html を読み込む
  win.loadFile(path.join(__dirname, 'index.html'));
  
  // デバッグ用に開発者ツールを開きたい場合はコメントアウトを解除
  // win.webContents.openDevTools();
}

app.whenReady().then(createWindow);

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit();
});
```

## 3. Electronのインストールと起動
LinuxMintの端末（ターミナル）を開き、作成したプロジェクトフォルダ（my-tyrano-project）に移動して以下のコマンドを実行します。

# 1. フォルダに移動
cd /path/to/my-tyrano-project

# 2. 開発用としてElectronをローカルインストール
npm install electron --save-dev

# 3. 起動
npm start

これでElectronのウィンドウが立ち上がり、ティラノスクリプトのゲーム画面が表示されます。
------------------------------
もし上記の手順でエラーが出た場合や、起動後に画面が真っ白になってしまう場合は、エラーメッセージを教えていただけますか？
また、今回は開発用のプレビュー起動ですが、最終的に配布用のパッケージ（exeやLinux向けバイナリ）を作成したいなど、次のステップのご希望があれば合わせてご案内します。

