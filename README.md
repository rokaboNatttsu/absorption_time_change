##  仕様と方針
Jupyter Notebook の中身をColabにコピペして実行する仕様

(G)UIの作成は自分以外も使う可能性が出てきてから。今はまだ

##  完了部分
「過渡状態の名前と吸収スペクトルと遷移のグラフと寿命をインプットし、
全体の吸収スペクトルの時間変化をアウトプットする

##  これから作るかも
MCMCの尤度関数の部分がおかしい？尤度関数を正規分布にするのは大丈夫？分散が小さいほどそれっぽい結果になるのはなぜ？うまくいっているように見えるのはなぜ？

各状態の密度の時間変化(既知)から、各状態の寿命と遷移のグラフを出力したい。

遷移過程のグラフを、考えられるすべてのパターンに総当たりしつつ、各遷移過程について連立微分方程式のフィッティングをするのは、かなりの計算量になる。
フィッティングはScipyでできるならScipyで、できないならPyMC3を使ってもいい。
    ・Scipyを使う場合
    Scipyのodeintでできるかな？
    ・PyMC3を使う場合
    連立微分方程式をMCMCに持ち込めないか？
    観測データと称する「状態の数密度の時間変化」に対して連立微分方程式を含むPyMC3のモデルで作って、推定するようにしたい
究極的には、光化学反応に伴う吸光度の変化(時間軸、波長、吸光度の軸を持つ三次元の離散データ)だけを読み取って、
過渡状態の数(外生変数)を仮定したときの各状態の寿命(内生変数)と遷移経路(内生変数)を推定できるようにしたい

条件ごとに新しく出力用のディレクトリを作り、その下に画像を作りたい

動的計画法で解いた密度変化を、偏微分方程式で解くバージョンで作りたい

分裂だけでなく結合もする光化学反応に対応できるようにしたい
