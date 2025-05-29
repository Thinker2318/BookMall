import router from '@ohos.router';

@Entry
@Component
export struct LoginPage {
  @State username: string = '';
  @State password: string = '';

  build() {
    Column() {
      // Logo展示
      Image($r("app.media.logo"))
        .width(120)
        .height(120)
        .margin({ top: 60 })

      // 登录表单
      TextInput({ placeholder: '请输入用户名' })
        .width('80%')
        .height(50)
        .margin({ top: 40 })
        .onChange((value: string) => {
          this.username = value;
        })

      TextInput({ placeholder: '请输入密码' })
        .width('80%')
        .height(50)
        .margin({ top: 20 })
        .type(InputType.Password)
        .onChange((value: string) => {
          this.password = value;
        })

      // 登录按钮
      Button('登 录')
        .width('80%')
        .height(50)
        .margin({ top: 40 })
        .backgroundColor('#007DFF')
        .onClick(() => {
          if (this.username && this.password) {
            // 简单登录验证
            //router.pushUrl({ url: 'pages/Home' });
            router.pushUrl({
              url: 'pages/Home',
              params: { username: this.username }  // 可携带参数
            });

          }
        })
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r("app.media.bg"), ImageRepeat.NoRepeat)
    .backgroundImageSize(ImageSize.Cover)
  }
}