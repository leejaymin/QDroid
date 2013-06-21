.class Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$1;
.super Landroid/os/Handler;
.source "ListViewFavoriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

.field private final synthetic val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$1;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iput-object p2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$1;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    .line 214
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$1;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    return-void
.end method
