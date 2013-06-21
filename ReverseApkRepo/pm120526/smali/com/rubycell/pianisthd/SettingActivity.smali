.class public Lcom/rubycell/pianisthd/SettingActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/tapjoy/bk;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Landroid/content/SharedPreferences$Editor;

.field c:Landroid/content/Context;

.field d:Lcom/rubycell/pianisthd/ui/MySeekBar;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field i:Landroid/widget/Button;

.field j:Landroid/widget/Button;

.field k:Landroid/widget/Button;

.field l:Landroid/widget/Button;

.field m:Landroid/widget/ImageButton;

.field n:Landroid/widget/ImageButton;

.field o:Landroid/widget/ImageButton;

.field p:Lcom/rubycell/adcenter/a;

.field q:Landroid/widget/LinearLayout;

.field r:Lcom/rubycell/pianisthd/ui/MySeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p="

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "market://details?id="

    goto :goto_0
.end method

.method static synthetic a(Lcom/rubycell/pianisthd/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubycell/pianisthd/SettingActivity;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->c()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/k;->b()V

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->finish()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play single mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play double mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play double-mirror mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/TripleRowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Play triple mode"

    invoke-static {v1}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected a()V
    .locals 6

    const v5, 0x7f0a0089

    const v4, 0x7f0a007f

    const/4 v1, 0x1

    const v3, 0x7f020135

    const v2, 0x7f02009a

    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_1
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->u:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->w:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_1
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-nez v0, :cond_4

    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    :goto_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setProgress(F)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->d:Lcom/rubycell/pianisthd/ui/MySeekBar;

    sget v1, Lcom/rubycell/pianisthd/d/b;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setProgress(F)V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_3
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, v5}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_4
    return-void

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_3
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :sswitch_0
    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :sswitch_1
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :sswitch_2
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :sswitch_3
    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_4
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-ne v0, v1, :cond_5

    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_5
    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_4

    :pswitch_5
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_4

    :pswitch_6
    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
        0x28 -> :sswitch_2
        0x32 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(I)V
    .locals 1

    new-instance v0, Lcom/rubycell/pianisthd/ao;

    invoke-direct {v0, p0, p1}, Lcom/rubycell/pianisthd/ao;-><init>(Lcom/rubycell/pianisthd/SettingActivity;I)V

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 5

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/16 v2, 0x8

    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-nez v0, :cond_0

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->m:F

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    sget v1, Lcom/rubycell/pianisthd/d/b;->l:F

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->n:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->m:F

    const v1, 0x3f3d70a4

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->o:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->n:F

    const v1, 0x3f0f5c29

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->p:F

    sget v0, Lcom/rubycell/pianisthd/d/b;->m:F

    const/high16 v1, 0x4250

    mul-float/2addr v0, v1

    sput v0, Lcom/rubycell/pianisthd/d/b;->q:F

    return-void

    :pswitch_0
    const/4 v0, 0x6

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_1
    sput v2, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_2
    sput v4, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sput v2, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_4
    sput v3, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xe

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->a:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    sput v3, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_7
    sput v4, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x10

    sput v0, Lcom/rubycell/pianisthd/d/b;->k:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    const v1, 0x7f020099

    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    const v1, 0x7f020099

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    const v1, 0x7f020099

    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->p:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->p:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->a()V

    goto :goto_0
.end method

.method public onConfigChange(Landroid/view/View;)V
    .locals 6

    const v1, 0x7f020099

    const/4 v5, 0x2

    const v4, 0x7f02009a

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->d()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sput v2, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    if-eq v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->d()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sput v5, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->d()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x3

    sput v0, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->d()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x4

    sput v0, Lcom/rubycell/pianisthd/d/b;->M:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ROWS"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->u:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020133

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sput-boolean v3, Lcom/rubycell/pianisthd/d/b;->u:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PLAY_ASSIST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const v0, 0x7f020135

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->u:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PLAY_ASSIST"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_6
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->w:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020133

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sput-boolean v3, Lcom/rubycell/pianisthd/d/b;->w:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NOTE_ANIMATE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f020135

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->w:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NOTE_ANIMATE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->v:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020133

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sput-boolean v3, Lcom/rubycell/pianisthd/d/b;->v:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NOTE_NAMING"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f020135

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->v:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NOTE_NAMING"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_8
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sput v3, Lcom/rubycell/pianisthd/d/b;->x:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_9
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sput v2, Lcom/rubycell/pianisthd/d/b;->x:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_a
    sget v0, Lcom/rubycell/pianisthd/d/b;->x:I

    if-eq v0, v5, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sput v5, Lcom/rubycell/pianisthd/d/b;->x:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_WIDTH"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_b
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->e()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sput v3, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_c
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->e()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x14

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_d
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->e()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x28

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_e
    sget v0, Lcom/rubycell/pianisthd/d/b;->A:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->e()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x32

    sput v0, Lcom/rubycell/pianisthd/d/b;->A:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DECAY_TIME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_f
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_4

    sput-boolean v3, Lcom/rubycell/pianisthd/d/b;->B:Z

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v3}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v3}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VIBRATE"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->B:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_4
    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->B:Z

    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v2}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0, v2}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setFocusable(Z)V

    goto :goto_1

    :pswitch_10
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    if-eqz v0, :cond_5

    sput-boolean v3, Lcom/rubycell/pianisthd/d/b;->ad:Z

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ad:Z

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->b(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "OTHER_HAND"

    sget-boolean v2, Lcom/rubycell/pianisthd/d/b;->ad:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_5
    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->ad:Z

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_11
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->f()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sput v3, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_12
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->f()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sput v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_13
    sget v0, Lcom/rubycell/pianisthd/d/b;->ae:I

    if-eq v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->f()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    sput v5, Lcom/rubycell/pianisthd/d/b;->ae:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEYBOARD_THEME"

    sget v2, Lcom/rubycell/pianisthd/d/b;->ae:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a007f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x1000

    const/16 v3, 0x400

    const/16 v2, 0x80

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/SettingActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->setVolumeControlStream(I)V

    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/rubycell/pianisthd/SettingActivity;->c:Landroid/content/Context;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/MySeekBar;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->d:Lcom/rubycell/pianisthd/ui/MySeekBar;

    const v0, 0x7f0a00b4

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->d:Lcom/rubycell/pianisthd/ui/MySeekBar;

    new-instance v1, Lcom/rubycell/pianisthd/al;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/al;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setOnProgressChangeListener(Lcom/rubycell/pianisthd/b/a;)V

    const v0, 0x7f0a009d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/MySeekBar;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->r:Lcom/rubycell/pianisthd/ui/MySeekBar;

    new-instance v1, Lcom/rubycell/pianisthd/ap;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ap;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MySeekBar;->setOnProgressChangeListener(Lcom/rubycell/pianisthd/b/a;)V

    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->g:Landroid/widget/Button;

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/aq;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/aq;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/ar;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ar;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/as;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/as;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/at;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/at;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->m:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/au;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/au;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/av;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/av;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/aw;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/aw;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->n:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/am;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/am;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->o:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/an;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/an;-><init>(Lcom/rubycell/pianisthd/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->f:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->b:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->a()V

    new-instance v0, Lcom/rubycell/adcenter/a;

    invoke-direct {v0, p0}, Lcom/rubycell/adcenter/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->p:Lcom/rubycell/adcenter/a;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->p:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->c()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->p:Lcom/rubycell/adcenter/a;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->b(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->d:Lcom/rubycell/pianisthd/ui/MySeekBar;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/MySeekBar;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/rubycell/pianisthd/SettingActivity;->h()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->p:Lcom/rubycell/adcenter/a;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->c(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    invoke-static {p0}, Lcom/tapjoy/av;->a(Lcom/tapjoy/bk;)V

    :cond_0
    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "payload"

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/SettingActivity;->p:Lcom/rubycell/adcenter/a;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SettingActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a;->a(Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/SettingActivity;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SettingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SettingActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
