.class final Lcom/rubycell/pianisthd/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/InstrumentActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/InstrumentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/aa;->a:Lcom/rubycell/pianisthd/InstrumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/b;->ac:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/aa;->a:Lcom/rubycell/pianisthd/InstrumentActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/InstrumentActivity;->a()V

    return-void
.end method
