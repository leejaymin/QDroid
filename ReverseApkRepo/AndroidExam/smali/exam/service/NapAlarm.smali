.class public Lexam/service/NapAlarm;
.super Landroid/app/Activity;
.source "NapAlarm.java"


# static fields
.field static final NAPNOTI:I = 0x1


# instance fields
.field mNotiManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f030054

    invoke-virtual {p0, v1}, Lexam/service/NapAlarm;->setContentView(I)V

    .line 17
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lexam/service/NapAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lexam/service/NapAlarm;->mNotiManager:Landroid/app/NotificationManager;

    .line 19
    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lexam/service/NapAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 20
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/service/NapAlarm$1;

    invoke-direct {v1, p0}, Lexam/service/NapAlarm$1;-><init>(Lexam/service/NapAlarm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
