.class Lcom/gameboys/pocket7/Dungeons$4;
.super Ljava/lang/Object;
.source "Dungeons.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/Dungeons;->setupWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/Dungeons;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/Dungeons;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/Dungeons$4;->this$0:Lcom/gameboys/pocket7/Dungeons;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons$4;->this$0:Lcom/gameboys/pocket7/Dungeons;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/Dungeons;->finish()V

    .line 404
    return-void
.end method
