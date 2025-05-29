// entry/src/main/ets/pages/Home.ets
@Entry
@Component
export struct HomePage {  // 关键修改：添加export
  build() {
    Column() {
      Text('欢迎进入网上书城')
        .fontSize(24)
        .margin({ top: 100 })
    }
    .width('100%')
    .height('100%')
  }
}