.class final Lutil/googleiap/DrawRace2Purchase$3;
.super Ljava/lang/Object;
.source "DrawRace2Purchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/googleiap/DrawRace2Purchase;->productPurchased(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$200()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 213
    return-void
.end method
