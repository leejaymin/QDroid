.class Lcom/redlynx/drawrace2/DrawRace2Activity$25;
.super Ljava/lang/Object;
.source "DrawRace2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2Activity;->showMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;


# direct methods
.method constructor <init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$25;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$25;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->showDialog(I)V

    .line 705
    return-void
.end method
