.class Lme;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lmd;


# direct methods
.method constructor <init>(Lmd;)V
    .locals 0

    iput-object p1, p0, Lme;->癤욱븳援:Lmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lme;->癤욱븳援:Lmd;

    invoke-virtual {v0, v1}, Lmd;->癤욱븳援(I)V

    :cond_1
    return-void
.end method
