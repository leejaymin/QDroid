.class public abstract Lma;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field public 癤욱븳援:Z

.field private final 궗:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lma;->궗:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lma;->궗:[Ljava/lang/Object;

    return-object v0
.end method

.method public ㅼ꽑嫄()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lma;->癤욱븳援:Z

    return-void
.end method

.method public abstract 弱밧()Landroid/net/Uri;
.end method

.method public abstract 洹()V
.end method

.method public abstract 癤욱븳援(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract 癤욱븳援(Landroid/widget/ListView;)Landroid/widget/ListAdapter;
.end method

.method public abstract 癤욱븳援()V
.end method

.method public abstract 癤욱븳援(JI)V
.end method

.method public abstract 癤욱븳援(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end method

.method public abstract 癤욱븳援(Landroid/view/Menu;)V
.end method

.method public abstract 癤욱븳援(Landroid/view/View;JI)V
.end method

.method public abstract 癤욱븳援([J[I)V
.end method

.method public abstract 癤욱븳援(Landroid/view/MenuItem;)Z
.end method

.method public abstract 궗()V
.end method

.method public abstract 궗(JI)V
.end method

.method public abstract 대쫫()V
.end method

.method public 먯꽌()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lma;->癤욱븳援:Z

    return-void
.end method

.method public abstract 몃Ъ()V
.end method

.method public abstract 쇰뒗()I
.end method
