.class Lcom/jellybus/fx_sub/ListViewAdapter$1;
.super Landroid/os/Handler;
.source "ListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

.field private final synthetic val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/ListViewAdapter;Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$1;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    iput-object p2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$1;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter$1;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v0, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    return-void
.end method
