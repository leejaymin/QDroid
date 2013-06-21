.class public Lcom/rubycell/pianisthd/SingleRowActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Z

.field c:I

.field d:Landroid/content/SharedPreferences;

.field e:Landroid/content/SharedPreferences$Editor;

.field f:Landroid/media/AudioManager;

.field g:I

.field h:I

.field i:Landroid/widget/ImageButton;

.field j:Landroid/graphics/drawable/AnimationDrawable;

.field k:Landroid/graphics/drawable/AnimationDrawable;

.field l:Landroid/graphics/drawable/AnimationDrawable;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/ImageView;

.field o:Landroid/widget/ImageView;

.field p:Z

.field q:Z

.field r:Landroid/content/Context;

.field s:Lcom/rubycell/adcenter/a;

.field t:Landroid/widget/LinearLayout;

.field u:Landroid/widget/ImageButton;

.field private v:Lcom/rubycell/moregame/center/n;

.field private w:Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Save your record as:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Save"

    new-instance v3, Lcom/rubycell/pianisthd/bb;

    invoke-direct {v3, p0, v1}, Lcom/rubycell/pianisthd/bb;-><init>(Lcom/rubycell/pianisthd/SingleRowActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/rubycell/pianisthd/bc;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/bc;-><init>(Lcom/rubycell/pianisthd/SingleRowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->J:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const v0, 0xf4240

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->v:Lcom/rubycell/moregame/center/n;

    invoke-static {}, Lcom/rubycell/moregame/center/n;->e()V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_0

    const-string v0, "groupId"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->g:I

    const-string v0, "childId"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->b:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_1
        0xf4240 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v3, 0x400

    const/16 v2, 0x80

    const/4 v7, 0x1

    const/16 v1, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/rubycell/pianisthd/SingleRowActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x1000

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->setVolumeControlStream(I)V

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->r:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->f:Landroid/media/AudioManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    new-instance v0, Lcom/rubycell/moregame/center/n;

    invoke-direct {v0, p0}, Lcom/rubycell/moregame/center/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->v:Lcom/rubycell/moregame/center/n;

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->v:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->t:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->t:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/rubycell/adcenter/a;

    invoke-direct {v0, p0}, Lcom/rubycell/adcenter/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    :cond_0
    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->w:Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->w:Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->w:Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->e:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0a010b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->i:Landroid/widget/ImageButton;

    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->o:Landroid/widget/ImageView;

    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    iput-boolean v5, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->b:Z

    iput-boolean v5, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->p:Z

    iput-boolean v5, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->q:Z

    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->d:Landroid/content/SharedPreferences;

    const-string v3, "FIRST_START"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f0a0116

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/SingleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->u:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->u:Landroid/widget/ImageButton;

    new-instance v2, Lcom/rubycell/pianisthd/ax;

    invoke-direct {v2, p0, v0}, Lcom/rubycell/pianisthd/ax;-><init>(Lcom/rubycell/pianisthd/SingleRowActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->i()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/e;->a()V

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->r:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->o:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->a:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->b:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->e:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->f:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->i:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->c:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->d:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->n:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->t:Lcom/rubycell/pianisthd/ui/b;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->c()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->b(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->J:Z

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->v:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->b()V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->v:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->a()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->finish()V

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onMenuButtonClick(Landroid/view/View;)V
    .locals 9

    const v3, 0x7f020169

    const v1, 0x7f020142

    const/16 v8, 0x96

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "Beat 1"

    aput-object v1, v0, v2

    const-string v1, "Beat 2"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "Beat 3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Beat 4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Beat 5"

    aput-object v2, v0, v1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Choose beat"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, -0x1

    new-instance v3, Lcom/rubycell/pianisthd/ba;

    invoke-direct {v3, p0}, Lcom/rubycell/pianisthd/ba;-><init>(Lcom/rubycell/pianisthd/SingleRowActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->p:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const v0, 0x7f02002c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/j/a;->c()V

    goto :goto_0

    :sswitch_1
    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->J:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_3
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/rubycell/pianisthd/d/i;->u:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    if-gez v0, :cond_4

    iput v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    :cond_4
    :goto_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/d/i;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    if-gez v0, :cond_4

    iput v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->finish()V

    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->J:Z

    goto/16 :goto_0

    :sswitch_3
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/rubycell/pianisthd/d/i;->u:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    invoke-static {p0, v1}, Lcom/rubycell/pianisthd/d/i;->a(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Playing \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/rubycell/pianisthd/d/b;->J:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "(Auto play) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a()I

    move-result v3

    if-ltz v3, :cond_9

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v4, v2

    :goto_2
    sget-boolean v1, Lcom/rubycell/pianisthd/d/i;->v:Z

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_b

    :cond_8
    invoke-static {v3, v7}, Lcom/rubycell/pianisthd/d/i;->a(IZ)V

    :cond_9
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->J:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/rubycell/pianisthd/d/i;->v:Z

    if-nez v0, :cond_a

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(I)V

    const-string v0, "Auto-play mode is turned on"

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_a
    sput-boolean v7, Lcom/rubycell/pianisthd/d/b;->J:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/e;

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rubycell/pianisthd/c/c;

    sget v5, Lcom/rubycell/pianisthd/d/b;->r:I

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->g()I

    move-result v1

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x15

    const/high16 v6, 0x3f80

    invoke-static {v5, v1, v7, v6}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-virtual {v1, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lcom/rubycell/pianisthd/c/c;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :sswitch_4
    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->q:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_c
    invoke-direct {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->b()V

    goto/16 :goto_0

    :cond_d
    sget-boolean v0, Lcom/rubycell/pianisthd/d/e;->b:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/rubycell/pianisthd/d/e;->a()V

    sput-boolean v2, Lcom/rubycell/pianisthd/d/e;->b:Z

    const-string v0, "Playback stopped"

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_e
    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->J:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_f
    const-string v0, "Auto-play mode is turned off"

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/SingleRowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->J:Z

    goto/16 :goto_0

    :sswitch_6
    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->J:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_10
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_11

    iput v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    :cond_11
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/d/i;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "Record song"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Your SD Card is unmounted or read-only"

    const/16 v1, 0x1f4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->q:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lcom/rubycell/pianisthd/d/b;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->q:Z

    if-nez v0, :cond_13

    iput-boolean v7, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->q:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->o:Landroid/widget/ImageView;

    const v2, 0x7f020166

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/g;->a(Ljava/util/ArrayList;)V

    const-string v0, "Recording"

    const/16 v1, 0x1f4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_13
    iput-boolean v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->q:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_14
    invoke-direct {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->b()V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "Change instrument"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/InstrumentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "target"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0072 -> :sswitch_1
        0x7f0a010b -> :sswitch_8
        0x7f0a010d -> :sswitch_0
        0x7f0a010e -> :sswitch_5
        0x7f0a010f -> :sswitch_2
        0x7f0a0110 -> :sswitch_6
        0x7f0a0111 -> :sswitch_3
        0x7f0a0112 -> :sswitch_4
        0x7f0a0113 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->p:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->J:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->c(Landroid/view/ViewGroup;)V

    :cond_2
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->l()V

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/l;->a(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const v3, 0x7f0200ed

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->s:Lcom/rubycell/adcenter/a;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a;->a(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->m()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------+restore"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->c()Lcom/rubycell/pianisthd/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->b()I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    invoke-static {p0}, Lcom/rubycell/pianisthd/d/i;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "payload"

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->b:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->b:Z

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->h:I

    invoke-static {p0, v0}, Lcom/rubycell/pianisthd/d/i;->a(Landroid/content/Context;I)V

    iget v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->h:I

    iput v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->c:I

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->a:Landroid/widget/TextView;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->i:Landroid/widget/ImageButton;

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    sparse-switch v1, :sswitch_data_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void

    :sswitch_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0200e5

    goto :goto_0

    :sswitch_2
    const v1, 0x7f0200e1

    goto :goto_0

    :sswitch_3
    const v1, 0x7f0200f4

    goto :goto_0

    :sswitch_4
    const v1, 0x7f0200dd

    goto :goto_0

    :sswitch_5
    const v1, 0x7f0200e9

    goto :goto_0

    :sswitch_6
    const v1, 0x7f0200eb

    goto :goto_0

    :sswitch_7
    const v1, 0x7f0200e3

    goto :goto_0

    :sswitch_8
    const v1, 0x7f0200ef

    goto :goto_0

    :sswitch_9
    const v1, 0x7f0200e7

    goto :goto_0

    :sswitch_a
    const v1, 0x7f0200df

    goto :goto_0

    :sswitch_b
    const v1, 0x7f0200f2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x11 -> :sswitch_6
        0x16 -> :sswitch_9
        0x18 -> :sswitch_7
        0x20 -> :sswitch_4
        0x28 -> :sswitch_3
        0x38 -> :sswitch_b
        0x40 -> :sswitch_8
        0x70 -> :sswitch_a
        0x72 -> :sswitch_5
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
    .end sparse-switch
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SingleRowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/i;->u:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/i;->v:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->L:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->B:Ljava/lang/String;

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->w:Lcom/rubycell/pianisthd/ui/MyCCGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Landroid/view/View;)Z

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->b(I)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    const-wide v1, 0x3f91111120000000L

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/c;->a(D)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/rubycell/pianisthd/ui/a;->a(Ljava/lang/String;)Lorg/cocos2d/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/e/d;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "A problem occured. Restart this application ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Restart"

    new-instance v2, Lcom/rubycell/pianisthd/ay;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/ay;-><init>(Lcom/rubycell/pianisthd/SingleRowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Quit"

    new-instance v2, Lcom/rubycell/pianisthd/az;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/az;-><init>(Lcom/rubycell/pianisthd/SingleRowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "++++++++++++stop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->a(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->v:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/j/a;->c()V

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->p:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    sput-boolean v2, Lcom/rubycell/pianisthd/d/b;->J:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->b()V

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->q:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->l:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SingleRowActivity;->o:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
