.class final Lcom/rubycell/pianisthd/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/DoubleRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/o;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/o;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setPosition()V

    return-void
.end method
