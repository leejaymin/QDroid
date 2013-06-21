.class Lexam/thread/Post$1;
.super Ljava/lang/Object;
.source "Post.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/Post;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/Post;


# direct methods
.method constructor <init>(Lexam/thread/Post;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/Post$1;->this$0:Lexam/thread/Post;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/thread/Post$1;)Lexam/thread/Post;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lexam/thread/Post$1;->this$0:Lexam/thread/Post;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 117
    iget-object v0, p0, Lexam/thread/Post$1;->this$0:Lexam/thread/Post;

    iget-object v0, v0, Lexam/thread/Post;->mUpload:Landroid/widget/Button;

    new-instance v1, Lexam/thread/Post$1$1;

    invoke-direct {v1, p0}, Lexam/thread/Post$1$1;-><init>(Lexam/thread/Post$1;)V

    .line 121
    const-wide/16 v2, 0xa

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method
