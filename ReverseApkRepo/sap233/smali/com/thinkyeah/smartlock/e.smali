.class final Lcom/thinkyeah/smartlock/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/AddAppActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/e;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const v0, 0x7f0b000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/thinkyeah/smartlock/e;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v2

    iget-object v1, p0, Lcom/thinkyeah/smartlock/e;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    aput-boolean v1, v2, p3

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/e;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0, p3}, Lcom/thinkyeah/smartlock/AddAppActivity;->a(Lcom/thinkyeah/smartlock/AddAppActivity;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
