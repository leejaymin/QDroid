.class public Lex;
.super Leq;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static ㅼ꽑嫄:Ljava/util/Random;

.field public static final 궗:Ljava/lang/String;

.field private static final 먯꽌:Ljava/util/List;

.field private static 몃Ъ:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final 弱밧:Lfb;

.field private 洹:Ley;

.field private 대쫫:Landroid/widget/TextView;

.field private 쇰뒗:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lfc;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".AdPost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lex;->궗:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lex;->먯꽌:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfb;I)V
    .locals 1

    invoke-direct {p0}, Leq;-><init>()V

    iput-object p1, p0, Lex;->弱밧:Lfb;

    invoke-interface {p1}, Lfb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lex;->癤욱븳援(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lex;->대쫫()V

    return-void
.end method

.method public static 癤욱븳援(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lex;->먯꽌:Ljava/util/List;

    new-instance v1, Ley;

    invoke-direct {v1, p0, p1, p2, p3}, Ley;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private 癤욱븳援(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    new-instance v1, Lez;

    invoke-direct {v1, p1}, Lez;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lez;->setGravity(I)V

    invoke-virtual {v1, p0}, Lez;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lex;->弱밧:Lfb;

    invoke-interface {v2}, Lfb;->궗()I

    move-result v2

    iget-object v3, p0, Lex;->弱밧:Lfb;

    invoke-interface {v3}, Lfb;->먯꽌()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lez;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x80

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lez;->setBackgroundColor(I)V

    :goto_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lex;->쇰뒗:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x4100

    invoke-static {v2}, Lee;->먯꽌(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lex;->쇰뒗:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lez;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lex;->대쫫:Landroid/widget/TextView;

    iget-object v0, p0, Lex;->대쫫:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lex;->弱밧:Lfb;

    invoke-interface {v0}, Lfb;->癤욱븳援()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x16

    :goto_2
    iget-object v2, p0, Lex;->대쫫:Landroid/widget/TextView;

    const/4 v3, 0x1

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v5, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lex;->대쫫:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lez;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lex;->癤욱븳援:Landroid/view/ViewGroup;

    return-void

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lex;->弱밧:Lfb;

    invoke-interface {v2}, Lfb;->먯꽌()I

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lez;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x100

    invoke-virtual {v1, v0}, Lez;->setBackgroundColor(I)V

    goto :goto_1

    :pswitch_0
    const/16 v0, 0xe

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x11

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static 癤욱븳援(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lex;->弱밧()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lex;->洹:Ley;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lex;->弱밧:Lfb;

    invoke-interface {v0}, Lfb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lex;->洹:Ley;

    iget-object v3, v3, Ley;->ㅼ꽑嫄:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lex;->궗:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lex;->弱밧:Lfb;

    invoke-interface {v0, p0}, Lfb;->癤욱븳援(Lfa;)V

    return-void
.end method

.method public 弱밧()Ljava/lang/Void;
    .locals 6

    const/16 v5, 0x1388

    const/16 v4, 0x2e

    const/16 v3, 0x100

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lex;->ㅼ꽑嫄:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lex;->ㅼ꽑嫄:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lex;->ㅼ꽑嫄:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lex;->ㅼ꽑嫄:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public 대쫫()V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lex;->먯꽌:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lex;->ㅼ꽑嫄:Ljava/util/Random;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lex;->ㅼ꽑嫄:Ljava/util/Random;

    :cond_1
    if-lez v1, :cond_4

    sget-object v0, Lex;->ㅼ꽑嫄:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v3, 0x0

    sget-object v1, Lex;->먯꽌:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v3

    :cond_3
    iput-object v0, p0, Lex;->洹:Ley;

    iget-object v1, p0, Lex;->쇰뒗:Landroid/widget/ImageView;

    iget-object v3, v0, Ley;->먯꽌:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lex;->쇰뒗:Landroid/widget/ImageView;

    iget-object v3, v0, Ley;->먯꽌:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lex;->대쫫:Landroid/widget/TextView;

    iget-object v0, v0, Ley;->궗:Ljava/lang/CharSequence;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_4
    sget-object v0, Lex;->몃Ъ:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lex;->몃Ъ:Ljava/util/concurrent/ExecutorService;

    :cond_5
    sget-object v0, Lex;->몃Ъ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lex;->弱밧:Lfb;

    invoke-interface {v0, p0}, Lfb;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ley;

    iget-object v4, p0, Lex;->洹:Ley;

    if-eq v0, v4, :cond_0

    iget v0, v0, Ley;->癤욱븳援:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ley;

    iget-object v5, p0, Lex;->洹:Ley;

    if-eq v0, v5, :cond_2

    iget v5, v0, Ley;->癤욱븳援:I

    if-lt v1, v5, :cond_3

    iget v0, v0, Ley;->癤욱븳援:I

    sub-int v0, v1, v0

    move v1, v0

    goto :goto_1

    :cond_8
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public 쇰뒗()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
