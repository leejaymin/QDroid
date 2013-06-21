.class Lcom/redlynx/drawrace2/DrawRace2Activity$11;
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
    .line 403
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$11;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$11;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->removeDialog(I)V

    .line 407
    return-void
.end method
