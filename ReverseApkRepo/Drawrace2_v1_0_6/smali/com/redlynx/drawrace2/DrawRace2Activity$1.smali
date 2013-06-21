.class Lcom/redlynx/drawrace2/DrawRace2Activity$1;
.super Ljava/lang/Object;
.source "DrawRace2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2Activity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 322
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$1;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 325
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Activity;->access$000()[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Native;->enableMusic(Z)V

    .line 326
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Activity;->access$000()[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$1;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-virtual {v0, v1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->showDialog(I)V

    .line 328
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Activity;->access$000()[Z

    move-result-object v0

    aput-boolean v2, v0, v1

    .line 330
    :cond_0
    return-void
.end method
