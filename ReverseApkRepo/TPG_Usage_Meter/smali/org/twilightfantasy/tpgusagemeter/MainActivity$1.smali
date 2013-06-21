.class Lorg/twilightfantasy/tpgusagemeter/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/twilightfantasy/tpgusagemeter/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;


# direct methods
.method constructor <init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$1;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    invoke-virtual {v0}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->startLookup()V

    .line 114
    return-void
.end method
