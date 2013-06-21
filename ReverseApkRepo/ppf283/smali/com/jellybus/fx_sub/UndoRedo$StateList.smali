.class public Lcom/jellybus/fx_sub/UndoRedo$StateList;
.super Ljava/lang/Object;
.source "UndoRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/UndoRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateList"
.end annotation


# instance fields
.field public function:Ljava/lang/String;

.field public height:I

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/jellybus/fx_sub/UndoRedo;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/jellybus/fx_sub/UndoRedo;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "w"
    .parameter "h"
    .parameter "function"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/jellybus/fx_sub/UndoRedo$StateList;->this$0:Lcom/jellybus/fx_sub/UndoRedo;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/jellybus/fx_sub/UndoRedo$StateList;->path:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lcom/jellybus/fx_sub/UndoRedo$StateList;->function:Ljava/lang/String;

    .line 188
    iput p3, p0, Lcom/jellybus/fx_sub/UndoRedo$StateList;->width:I

    .line 189
    iput p4, p0, Lcom/jellybus/fx_sub/UndoRedo$StateList;->height:I

    return-void
.end method
