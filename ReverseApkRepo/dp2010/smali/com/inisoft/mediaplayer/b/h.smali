.class final Lcom/inisoft/mediaplayer/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/f;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/h;->a:Lcom/inisoft/mediaplayer/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/h;->a:Lcom/inisoft/mediaplayer/b/f;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/b/f;->a(Lcom/inisoft/mediaplayer/b/f;I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
