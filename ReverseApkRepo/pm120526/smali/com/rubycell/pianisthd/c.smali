.class final Lcom/rubycell/pianisthd/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/c;->a:Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c;->a:Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setPosition()V

    return-void
.end method
