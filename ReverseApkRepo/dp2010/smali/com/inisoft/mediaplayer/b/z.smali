.class final Lcom/inisoft/mediaplayer/b/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/w;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/w;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/z;->a:Lcom/inisoft/mediaplayer/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/z;->a:Lcom/inisoft/mediaplayer/b/w;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/b/w;->g(Lcom/inisoft/mediaplayer/b/w;I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
