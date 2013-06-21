.class final Lcom/thinkyeah/common/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field final synthetic a:Lcom/thinkyeah/common/b/g;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/common/b/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/common/b/h;->a:Lcom/thinkyeah/common/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/thinkyeah/common/b/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/thinkyeah/common/b/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    return-object v0
.end method
