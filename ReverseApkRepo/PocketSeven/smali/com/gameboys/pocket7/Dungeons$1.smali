.class Lcom/gameboys/pocket7/Dungeons$1;
.super Ljava/lang/Object;
.source "Dungeons.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/Dungeons;->createDialog(II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/Dungeons;

.field private final synthetic val$helpUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/Dungeons;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/Dungeons$1;->this$0:Lcom/gameboys/pocket7/Dungeons;

    iput-object p2, p0, Lcom/gameboys/pocket7/Dungeons$1;->val$helpUri:Landroid/net/Uri;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 358
    iget-object v2, p0, Lcom/gameboys/pocket7/Dungeons$1;->val$helpUri:Landroid/net/Uri;

    .line 357
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons$1;->this$0:Lcom/gameboys/pocket7/Dungeons;

    invoke-virtual {v1, v0}, Lcom/gameboys/pocket7/Dungeons;->startActivity(Landroid/content/Intent;)V

    .line 360
    return-void
.end method
