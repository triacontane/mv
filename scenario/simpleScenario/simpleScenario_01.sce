@start

// コモンイベント１番で初期化しています。
// そちらもご覧ください

// ↓会話ウィンドウを閉じないようにする設定ですが、
// 実は @start を実行しても同じ効果が得られます。
@not_close flag=on

@default_pos actor=2 position=right

@cos2 outer=b

@if_sw flag=on id=1 // 一回会話をした
    @a1
    あ、V1回目ですね、ではもう一回説明しますね。
    
    @label_jump value=説明
@end


@a1
リオさん、リオさん、聞いてください！

@a2
うん、トモちゃんどうしたの？

@color color=0

突然トモちゃんが目の前に現れた。
なにやら興奮しているようだ。

@a1
私もツクールMVで新しくスクリプトを作り始めたのです！
詳細を聞きたいですか？

@choice_h label1=はい label2=いいえ default=0 cancel=2 position=2

@choice_if index=1
    @a2 face=3
    へぇ、トモちゃんも？　どういうのを作っているの？

    @a1
    やだなぁ、今、私たちが使っているコレですよ。
@end

@choice_if index=2
    @a1
    えーっ！　聞きたくないんですか！？

    @choice_h label1=はい label2=いいえ default=1 cancel=2 position=2
    @choice_if index=1
        @balloon target=0 balloon=6 wait=true
        @hide
        @return
    @end

    @choice_if index=2
        @a2 face=3
        じゃあ、やっぱり聞こうかな。

        @a1
        まかせてください、それはなんと、これなのです！
    @end

@end

@label value=説明

@a2 face=2
えっ？


@m1
aaa


@a1
ほらほら、会話用のスクリプトですよ。
下に吹き出しつきのウィンドウが出てるじゃないですか。

@a1
昔はギャルゲー風会話スクリプトとか名前つけてたやつですよ。

@a2 face=1
ああ、そっか。灯台元暗しってやつだね。
気がつかなかったよ。

@a1
そしてなんと今回は、ポーズを変えたりもできるんですよ！

@a1 pose=2
じゃんっ！

@a2 face=3
へぇ、そんなこともできるんだね。
時代は進んでるんだね。

@a1
まだありますよ！　はい、これをつけてください。

@a2
えっ？

@cos2 outer=c
@a2 face=3

@se file=Equip2 volume=80

@a1
どうですか？

@a2
えっと、これは何かな？

@a1
マフラーです。なんか、イケイケな感じの先輩が置いていったんですよ。

@a2
イケイケな感じの先輩……ハルカさんかな？

@a1
まあそんなことはどうでもよくって、
私が言いたいのは、衣装も変えられるということなのです。

@a2 face=1
あ、なるほど。

@a1
アウターの衣装画像は、
"体の後ろ"、"顔と体の中間"、"顔よりも手前"の
３つのレイヤーから構成されているのです。

@a1
これぐらいあれば、普通は足りると思います！

@a2 face=3
なるほどー。

トモちゃんは、いきいきとして説明を続けた。

@a1
そしてまだまだありますよ！
なんと、服も脱げるのです！

@a2 face=3 hoppe=0
へっ？

@a1
行きますよー！

@a2 face=3
えっ……服を脱ぐって……一体何を言っ……。

@hide_left

@m1 name=トモコ color=1
……。

@color color=0

トモちゃんは奥にかくれてしまった。
そしてしばらくして……

@cos1 outer=a
@se file=Equip2 volume=80

@a1
じゃんっ！

@a2 face=2
えええっ！？

@a1
どうですか？　すごいでしょう？

@a2 hoppe=1
す、すごいというか、トモちゃん、どうしてそんな機能作ったの！？　こんな機能、全く必要ないよね！？

@a1
でも使う人がいるかもしれないじゃないですか。

@a2
いないいない！　とにかく服を着て！

@a1 pose=1
下着を脱ぐ機能もあるんですけど。
試してみます？

@a2 face=4
いいから！　それは本当にいいから！

@a1
もう、仕方ないですね。

@cos1 outer=b
@se file=Equip2 volume=80

@a1
はい。

@a2 hoppe=0 face=5
全く……私が止めないとすぐに暴走するんだから。

@a1
リオさんは真面目すぎるんですよ。

@a2 face=6
わ、私は普通だよ……。いたって、ね。

@a1
はい、そういうことにしておきましょう。

@a2 face=3
それにしても、こんなにいろいろ機能つけて、
ツクールイベントの設定が大変なんじゃないの？

@a2 face=3
私、ウィンドウの位置とかで会話文を制御するの疲れちゃったし、あんまり手間だったらちょっと辛いかも。

@a1
そうくると思っていました！
安心してください。実は設定も、とっても簡単なんです！

@a2 face=1
なんだか通販番組みたいになってきたね。

@a1
実はこの会話は、ツクールのイベントで書いているわけではないのです！

@a2 face=3
えっ、じゃあどうやって作ってるの？

@a1
テキストファイルで会話イベントを書いているのです。

@picture layer=1 file=ss1 x=30 y=10
@se file=Jump1 volume=80

@a1
こんな感じで！

@a2
うーん、ちょっとみづらいかな。

@a1
じゃあ、はい。

@picture_erace layer=1
@se file=Jump1 volume=80
@picture layer=15 file=ss1 x=30 y=10

@a2
あ、みやすくなったね。

@a1
キャラ絵もただのピクチャなのです。
なのでレイヤー順も思いのままなのです。

@a2
へぇ、なんだか覚えるのが大変そうだけど、慣れれば楽をできそうだね。

@picture_erace layer=15

@a1
作業効率は当社比で５倍です！
なお、睡工房さんのTESを参考にさせてもらっています！

@a2 face=1
ありがとうございます。

@a1
さらに、controlキーでメッセージスキップが、
Shiftキーでウィンドウ消去ができますよ！

@a2 face=3
へぇーっ！

@a1
えへん、この便利なスクリプト、使いたくなったでしょう？

@a2 face=1
うん、ぜひ使ってみたいな。

@a2 face=3
でもこんなに便利なら、やっぱり値段は高いんだよね？

@a1
そこも勉強します！　通常は19,800円のところ、なんと……

@a1
特別価格……タダです！

@a2 face=2
ええっ！！　そんなにしちゃって大丈夫なの！？

@a1
いーんです！　利用規約も特にないです。

@a2 face=3
ずいぶん太っ腹だね……。

@a1
まあ、まだ全然完成ってわけじゃないんですけどね。

@a2 face=1
そうなんだね、がんばってね。

@a1
夜な夜な開発していきますよー！

@a2
公開が楽しみだね。

@a1
というわけで、みんなも楽しいツクールMVライフをっ！

@a2 face=3
あ、終わるんだ。

@a1
それではまた来週〜。

@a2 face=1
みなさん、またね。

@if_sw flag=on id=1 // 一回会話をした
    @var id=1 op=+ value=1
@end_else
    @sw id=1 flag=on
    @var id=1 op== value=2  // 初回は２
@end

@hide
