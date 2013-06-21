.class final Lcom/inisoft/mediaplayer/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/a;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/b;->a:Lcom/inisoft/mediaplayer/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/b;->a:Lcom/inisoft/mediaplayer/b/a;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/b/a;->a(Lcom/inisoft/mediaplayer/b/a;I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
