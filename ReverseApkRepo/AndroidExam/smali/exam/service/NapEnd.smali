.class public Lexam/service/NapEnd;
.super Landroid/app/Activity;
.source "NapEnd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v2, 0x7f030055

    invoke-virtual {p0, v2}, Lexam/service/NapEnd;->setContentView(I)V

    .line 16
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lexam/service/NapEnd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/NotificationManager;

    .line 17
    .local v0, NM:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 19
    const v2, 0x7f0c006b

    invoke-virtual {p0, v2}, Lexam/service/NapEnd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 20
    .local v1, btn:Landroid/widget/Button;
    new-instance v2, Lexam/service/NapEnd$1;

    invoke-direct {v2, p0}, Lexam/service/NapEnd$1;-><init>(Lexam/service/NapEnd;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
