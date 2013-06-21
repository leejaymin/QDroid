.class final Lcom/thinkyeah/smartlock/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/cp;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/cs;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cs;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-static {v0, p3}, Lcom/thinkyeah/smartlock/cp;->a(Lcom/thinkyeah/smartlock/cp;I)V

    const/4 v0, 0x1

    return v0
.end method
