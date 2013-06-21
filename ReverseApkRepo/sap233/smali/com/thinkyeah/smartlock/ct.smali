.class final Lcom/thinkyeah/smartlock/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/cp;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ct;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ct;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-static {v0, p3}, Lcom/thinkyeah/smartlock/cp;->a(Lcom/thinkyeah/smartlock/cp;I)V

    return-void
.end method
