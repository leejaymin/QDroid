.class public Lcom/jaceks/crashapp3/CrashActivity;
.super Landroid/app/Activity;
.source "CrashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/jaceks/crashapp3/CrashActivity;->setContentView(I)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, o:Ljava/lang/Object;
    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method
