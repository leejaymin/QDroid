.class public Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;
.super Lcom/scoreloop/client/android/core/ui/WebViewDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;

.field private d:Landroid/app/ProgressDialog;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p2, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->f:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->e:Ljava/util/Map;

    .line 38
    iput-object p4, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->c:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;

    .line 40
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->setCancelable(Z)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->b:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->c:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;->c()V

    .line 50
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->c:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;

    invoke-interface {v1, p1}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->b:Z

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_0
    return v0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->d:Landroid/app/ProgressDialog;

    .line 76
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->b:Z

    .line 81
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->c:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;->b()V

    .line 82
    invoke-super {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->cancel()V

    .line 83
    return-void
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Loading..."

    const-string v2, "Please wait!"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->d:Landroid/app/ProgressDialog;

    .line 105
    return-void
.end method

.method protected final e()V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v3, 0x4396

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v4, 0x43c8

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->onStart()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->b:Z

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->e:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    return-void
.end method
