.class public Lcom/rubycell/pianisthd/TripleRowActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Landroid/graphics/drawable/AnimationDrawable;

.field c:Landroid/graphics/drawable/AnimationDrawable;

.field d:Landroid/widget/ImageView;

.field e:Z

.field f:Z

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageButton;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/media/AudioManager;

.field k:Landroid/content/Context;

.field l:Lcom/rubycell/pianisthd/ui/PianoView3;

.field private m:Lcom/rubycell/moregame/center/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==============result code= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ======request code= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0xf4240

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->m:Lcom/rubycell/moregame/center/n;

    invoke-static {}, Lcom/rubycell/moregame/center/n;->e()V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/TripleRowActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xf4240
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x1000

    const/16 v4, 0x400

    const/16 v3, 0x80

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/TripleRowActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/TripleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/TripleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/TripleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/TripleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->setVolumeControlStream(I)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->setContentView(I)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->j:Landroid/media/AudioManager;

    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->a:Landroid/widget/ImageButton;

    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->d:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->e:Z

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->g:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->f:Z

    const v0, 0x7f0a017e

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->h:Landroid/widget/ImageButton;

    const v0, 0x7f0a010e

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->i:Landroid/widget/ImageButton;

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/PianoView3;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->l:Lcom/rubycell/pianisthd/ui/PianoView3;

    new-instance v0, Lcom/rubycell/moregame/center/n;

    invoke-direct {v0, p0}, Lcom/rubycell/moregame/center/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->m:Lcom/rubycell/moregame/center/n;

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->m:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->k:Landroid/content/Context;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {}, Lcom/rubycell/pianisthd/d/e;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->J:Z

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->m:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->b()V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->m:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->a()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/h;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/TripleRowActivity;->finish()V

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onMenuButtonClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f020169

    const/16 v3, 0x1f4

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "Beat 1"

    aput-object v1, v0, v4

    const-string v1, "Beat 2"

    aput-object v1, v0, v2

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

    iget-object v2, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Choose beat"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, -0x1

    new-instance v3, Lcom/rubycell/pianisthd/bs;

    invoke-direct {v3, p0}, Lcom/rubycell/pianisthd/bs;-><init>(Lcom/rubycell/pianisthd/TripleRowActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->e:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const v0, 0x7f02002c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/j/a;->c()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/h;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/TripleRowActivity;->finish()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "Record song"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Your SD Card is unmounted"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v4, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->f:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lcom/rubycell/pianisthd/d/b;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->f:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->f:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->g:Landroid/widget/ImageView;

    const v2, 0x7f020166

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/g;->a(Ljava/util/ArrayList;)V

    const-string v0, "Recording"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->f:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Save your record as:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Save"

    new-instance v3, Lcom/rubycell/pianisthd/bt;

    invoke-direct {v3, p0, v1}, Lcom/rubycell/pianisthd/bt;-><init>(Lcom/rubycell/pianisthd/TripleRowActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/rubycell/pianisthd/bu;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/bu;-><init>(Lcom/rubycell/pianisthd/TripleRowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Change instrument"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/InstrumentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "target"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0028 -> :sswitch_3
        0x7f0a010d -> :sswitch_0
        0x7f0a010e -> :sswitch_2
        0x7f0a017c -> :sswitch_4
        0x7f0a017e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->e:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const v3, 0x7f0200ed

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "++++++++++++resume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "payload"

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/TripleRowActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->a:Landroid/widget/ImageButton;

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    sparse-switch v1, :sswitch_data_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->l:Lcom/rubycell/pianisthd/ui/PianoView3;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/PianoView3;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

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
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "++++++++++++stop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->m:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/j/a;->c()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->f:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/TripleRowActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
