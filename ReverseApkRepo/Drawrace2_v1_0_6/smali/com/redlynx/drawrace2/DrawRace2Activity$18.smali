.class Lcom/redlynx/drawrace2/DrawRace2Activity$18;
.super Ljava/lang/Object;
.source "DrawRace2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 477
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$18;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$18;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->removeDialog(I)V

    .line 481
    return-void
.end method
