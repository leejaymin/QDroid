.class final Lcom/redlynx/drawrace2/DrawRace2Native$2;
.super Ljava/lang/Object;
.source "DrawRace2Native.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2Native;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    sget v1, Lcom/redlynx/drawrace2/DrawRace2Native;->smDialogType:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 338
    return-void
.end method
