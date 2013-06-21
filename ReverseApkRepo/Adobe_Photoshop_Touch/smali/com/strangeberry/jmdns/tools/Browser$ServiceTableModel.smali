.class Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;
.super Ljavax/swing/table/AbstractTableModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/strangeberry/jmdns/tools/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceTableModel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4dd399593fe9d4f2L


# instance fields
.field final synthetic this$0:Lcom/strangeberry/jmdns/tools/Browser;


# direct methods
.method constructor <init>(Lcom/strangeberry/jmdns/tools/Browser;)V
    .locals 0

    iput-object p1, p0, Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "service"

    goto :goto_0

    :pswitch_1
    const-string v0, "address"

    goto :goto_0

    :pswitch_2
    const-string v0, "port"

    goto :goto_0

    :pswitch_3
    const-string v0, "text"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRowCount()I
    .locals 1

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    iget-object v0, v0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    invoke-virtual {v0}, Ljavax/swing/DefaultListModel;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    iget-object v0, v0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    invoke-virtual {v0, p1}, Ljavax/swing/DefaultListModel;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
