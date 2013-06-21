.class public Lcom/scoreloop/client/android/core/ui/ProxyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;,
        Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/app/Activity;Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    sput-object p0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->c:Landroid/content/Intent;

    .line 47
    sput-object p2, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->b:Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/scoreloop/client/android/core/ui/ProxyActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public static a(Lcom/scoreloop/client/android/core/model/Continuation;Landroid/content/Context;Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    sput-object p0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    .line 38
    sput-object p2, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->b:Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/scoreloop/client/android/core/ui/ProxyActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/ProxyActivity;->finish()V

    .line 56
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->b:Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->b:Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;

    invoke-interface {v0, p2, p3}, Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;->a(ILandroid/content/Intent;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 67
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/ui/ProxyActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    sget-object v0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->c:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->c:Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/ui/ProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 85
    sget-object v0, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->b:Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;

    .line 86
    sput-object v1, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    sput-object v1, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->b:Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;

    sput-object v1, Lcom/scoreloop/client/android/core/ui/ProxyActivity$a;->c:Landroid/content/Intent;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;->c_()V

    .line 91
    :cond_0
    return-void
.end method
