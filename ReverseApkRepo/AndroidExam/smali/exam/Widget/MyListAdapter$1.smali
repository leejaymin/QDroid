.class Lexam/Widget/MyListAdapter$1;
.super Ljava/lang/Object;
.source "ListIconText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Widget/MyListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/MyListAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lexam/Widget/MyListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/MyListAdapter$1;->this$0:Lexam/Widget/MyListAdapter;

    iput p2, p0, Lexam/Widget/MyListAdapter$1;->val$pos:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lexam/Widget/MyListAdapter$1;->this$0:Lexam/Widget/MyListAdapter;

    iget-object v1, v1, Lexam/Widget/MyListAdapter;->arSrc:Ljava/util/ArrayList;

    iget v3, p0, Lexam/Widget/MyListAdapter$1;->val$pos:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexam/Widget/MyItem;

    iget-object v1, v1, Lexam/Widget/MyItem;->Name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\ub97c \uc8fc\ubb38\ud569\ub2c8\ub2e4."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lexam/Widget/MyListAdapter$1;->this$0:Lexam/Widget/MyListAdapter;

    iget-object v1, v1, Lexam/Widget/MyListAdapter;->maincon:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    return-void
.end method
