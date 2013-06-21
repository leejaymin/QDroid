.class public Lstericson/busybox/donate/Activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field private static overridePendingTransition:Ljava/lang/reflect/Method;


# instance fields
.field public endApplication:Z

.field public pw:Landroid/widget/PopupWindow;

.field public tf:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 157
    :try_start_0
    const-class v1, Landroid/app/Activity;

    .line 159
    const-string v2, "overridePendingTransition"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    sput-object v1, Lstericson/busybox/donate/Activity/BaseActivity;->overridePendingTransition:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 160
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 161
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    sput-object v1, Lstericson/busybox/donate/Activity/BaseActivity;->overridePendingTransition:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static overridePendingTransition(Landroid/app/Activity;II)V
    .locals 4
    .parameter "activity"
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    .line 178
    sget-object v0, Lstericson/busybox/donate/Activity/BaseActivity;->overridePendingTransition:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    sget-object v0, Lstericson/busybox/donate/Activity/BaseActivity;->overridePendingTransition:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 147
    iget-boolean v0, p0, Lstericson/busybox/donate/Activity/BaseActivity;->endApplication:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/BaseActivity;->finish()V

    .line 149
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/BaseActivity;->randomAnimation()V

    .line 151
    :cond_0
    return-void
.end method

.method public debug(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 189
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Debug is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    return-void

    :cond_0
    move v0, v1

    .line 189
    goto :goto_0
.end method

.method public initiatePopupWindow(Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 7
    .parameter "text"
    .parameter "endApplication"
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    .line 67
    iget-object v4, p0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 70
    :cond_0
    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    iput-boolean p2, p0, Lstericson/busybox/donate/Activity/BaseActivity;->endApplication:Z

    .line 75
    const-string v4, "layout_inflater"

    invoke-virtual {p3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Landroid/view/LayoutInflater;

    .line 77
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, layout:Landroid/view/View;
    new-instance v4, Landroid/widget/PopupWindow;

    .line 79
    invoke-direct {v4, v2, v6, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 78
    iput-object v4, p0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    .line 81
    const v4, 0x7f05001c

    invoke-virtual {p3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lstericson/busybox/donate/Activity/BaseActivity$1;

    invoke-direct {v5, p0}, Lstericson/busybox/donate/Activity/BaseActivity$1;-><init>(Lstericson/busybox/donate/Activity/BaseActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 87
    const v4, 0x7f05000e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, header:Landroid/widget/TextView;
    iget-object v4, p0, Lstericson/busybox/donate/Activity/BaseActivity;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    const v4, 0x7f05002d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .end local v0           #header:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public makeChoice(Lstericson/busybox/donate/interfaces/Choice;IIIII)V
    .locals 2
    .parameter "choice"
    .parameter "id"
    .parameter "title"
    .parameter "content"
    .parameter "positive"
    .parameter "negative"

    .prologue
    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    new-instance v1, Lstericson/busybox/donate/Activity/BaseActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lstericson/busybox/donate/Activity/BaseActivity$2;-><init>(Lstericson/busybox/donate/Activity/BaseActivity;Lstericson/busybox/donate/interfaces/Choice;I)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    new-instance v1, Lstericson/busybox/donate/Activity/BaseActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lstericson/busybox/donate/Activity/BaseActivity$3;-><init>(Lstericson/busybox/donate/Activity/BaseActivity;Lstericson/busybox/donate/interfaces/Choice;I)V

    invoke-virtual {v0, p6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 108
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sput-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 41
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/DJGROSS.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lstericson/busybox/donate/Activity/BaseActivity;->tf:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0}, Lstericson/busybox/donate/jobs/AsyncJob;->cancelAllJobs(Landroid/content/Context;)V

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 112
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstericson/busybox/donate/Activity/BaseActivity;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lstericson/busybox/donate/Activity/BaseActivity;->close(Landroid/view/View;)V

    .line 121
    :goto_0
    const/4 v0, 0x1

    .line 124
    :goto_1
    return v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/BaseActivity;->finish()V

    .line 118
    invoke-virtual {p0}, Lstericson/busybox/donate/Activity/BaseActivity;->randomAnimation()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public randomAnimation()V
    .locals 3

    .prologue
    const v2, 0x7f040005

    .line 128
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 129
    .local v0, random:Ljava/util/Random;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 131
    :pswitch_0
    const v1, 0x7f040001

    invoke-static {p0, v1, v2}, Lstericson/busybox/donate/Activity/BaseActivity;->overridePendingTransition(Landroid/app/Activity;II)V

    goto :goto_0

    .line 135
    :pswitch_1
    const/high16 v1, 0x7f04

    .line 136
    const v2, 0x7f040003

    .line 135
    invoke-static {p0, v1, v2}, Lstericson/busybox/donate/Activity/BaseActivity;->overridePendingTransition(Landroid/app/Activity;II)V

    goto :goto_0

    .line 139
    :pswitch_2
    const v1, 0x7f040002

    invoke-static {p0, v1, v2}, Lstericson/busybox/donate/Activity/BaseActivity;->overridePendingTransition(Landroid/app/Activity;II)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
