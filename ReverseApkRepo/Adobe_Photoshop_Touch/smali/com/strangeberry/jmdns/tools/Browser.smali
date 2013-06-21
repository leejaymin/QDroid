.class public Lcom/strangeberry/jmdns/tools/Browser;
.super Ljavax/swing/JFrame;

# interfaces
.implements Ljavax/jmdns/ServiceListener;
.implements Ljavax/jmdns/ServiceTypeListener;
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fcc82b604f9bc83L


# instance fields
.field info:Ljavax/swing/JTextArea;

.field jmmdns:Ljavax/jmdns/JmmDNS;

.field serviceList:Ljavax/swing/JList;

.field services:Ljavax/swing/DefaultListModel;

.field type:Ljava/lang/String;

.field typeList:Ljavax/swing/JList;

.field types:Ljavax/swing/DefaultListModel;


# direct methods
.method constructor <init>(Ljavax/jmdns/JmmDNS;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x1e

    const/16 v9, 0x14

    const/4 v8, 0x1

    const/4 v5, 0x5

    const/4 v0, 0x0

    const-string v1, "JmDNS Browser"

    invoke-direct {p0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmmdns:Ljavax/jmdns/JmmDNS;

    new-instance v1, Ljava/awt/Color;

    const/16 v2, 0xe6

    const/16 v3, 0xe6

    const/16 v4, 0xe6

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/Color;-><init>(III)V

    new-instance v2, Ljavax/swing/border/EmptyBorder;

    invoke-direct {v2, v5, v5, v5, v5}, Ljavax/swing/border/EmptyBorder;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/strangeberry/jmdns/tools/Browser;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    new-instance v4, Ljava/awt/GridLayout;

    const/4 v5, 0x3

    invoke-direct {v4, v8, v5}, Ljava/awt/GridLayout;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v4, Ljavax/swing/DefaultListModel;

    invoke-direct {v4}, Ljavax/swing/DefaultListModel;-><init>()V

    iput-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->types:Ljavax/swing/DefaultListModel;

    new-instance v4, Ljavax/swing/JList;

    iget-object v5, p0, Lcom/strangeberry/jmdns/tools/Browser;->types:Ljavax/swing/DefaultListModel;

    invoke-direct {v4, v5}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    iput-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v4, v2}, Ljavax/swing/JList;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v4, v1}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v4, v0}, Ljavax/swing/JList;->setSelectionMode(I)V

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v4, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    new-instance v4, Ljavax/swing/JPanel;

    invoke-direct {v4}, Ljavax/swing/JPanel;-><init>()V

    new-instance v5, Ljava/awt/BorderLayout;

    invoke-direct {v5}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v4, v5}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    const-string v5, "North"

    new-instance v6, Ljavax/swing/JLabel;

    const-string v7, "Types"

    invoke-direct {v6, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    const-string v5, "Center"

    new-instance v6, Ljavax/swing/JScrollPane;

    iget-object v7, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-direct {v6, v7, v9, v10}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    invoke-virtual {v4, v5, v6}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v3, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v4, Ljavax/swing/DefaultListModel;

    invoke-direct {v4}, Ljavax/swing/DefaultListModel;-><init>()V

    iput-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    new-instance v4, Ljavax/swing/JList;

    iget-object v5, p0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    invoke-direct {v4, v5}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    iput-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v4, v2}, Ljavax/swing/JList;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v4, v1}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v4, v0}, Ljavax/swing/JList;->setSelectionMode(I)V

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v4, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    new-instance v4, Ljavax/swing/JPanel;

    invoke-direct {v4}, Ljavax/swing/JPanel;-><init>()V

    new-instance v5, Ljava/awt/BorderLayout;

    invoke-direct {v5}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v4, v5}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    const-string v5, "North"

    new-instance v6, Ljavax/swing/JLabel;

    const-string v7, "Services"

    invoke-direct {v6, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    const-string v5, "Center"

    new-instance v6, Ljavax/swing/JScrollPane;

    iget-object v7, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-direct {v6, v7, v9, v10}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    invoke-virtual {v4, v5, v6}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v3, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v4, Ljavax/swing/JTextArea;

    invoke-direct {v4}, Ljavax/swing/JTextArea;-><init>()V

    iput-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-virtual {v4, v2}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-virtual {v2, v1}, Ljavax/swing/JTextArea;->setBackground(Ljava/awt/Color;)V

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v8}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    const-string v2, "North"

    new-instance v4, Ljavax/swing/JLabel;

    const-string v5, "Details"

    invoke-direct {v4, v5}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    const-string v2, "Center"

    new-instance v4, Ljavax/swing/JScrollPane;

    iget-object v5, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-direct {v4, v5, v9, v10}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    invoke-virtual {v1, v2, v4}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v3, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/strangeberry/jmdns/tools/Browser;->setDefaultCloseOperation(I)V

    const/16 v1, 0x64

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/strangeberry/jmdns/tools/Browser;->setLocation(II)V

    const/16 v1, 0x258

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Lcom/strangeberry/jmdns/tools/Browser;->setSize(II)V

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmmdns:Ljavax/jmdns/JmmDNS;

    invoke-interface {v1, p0}, Ljavax/jmdns/JmmDNS;->addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmmdns:Ljavax/jmdns/JmmDNS;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljavax/jmdns/JmmDNS;->registerServiceType(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/strangeberry/jmdns/tools/Browser;->setVisible(Z)V

    return-void
.end method

.method private dislayInfo([Ljavax/jmdns/ServiceInfo;)V
    .locals 11

    const/16 v10, 0x3a

    const/4 v1, 0x0

    const/16 v9, 0xa

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "INFO: null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const-string v1, "service not found\n"

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x800

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INFO: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p1, v2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INFO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getPropertyNames()Ljava/util/Enumeration;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3d

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v0, "------------------------\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/strangeberry/jmdns/tools/Browser;

    invoke-static {}, Ljavax/jmdns/JmmDNS$Factory;->getInstance()Ljavax/jmdns/JmmDNS;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/strangeberry/jmdns/tools/Browser;-><init>(Ljavax/jmdns/JmmDNS;)V

    return-void
.end method


# virtual methods
.method insertSorted(Ljavax/swing/DefaultListModel;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljavax/swing/DefaultListModel;->getSize()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljavax/swing/DefaultListModel;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    if-gez v0, :cond_1

    invoke-virtual {p1, p2, v1}, Ljavax/swing/DefaultListModel;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/strangeberry/jmdns/tools/Browser$1;

    invoke-direct {v1, p0, v0}, Lcom/strangeberry/jmdns/tools/Browser$1;-><init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V

    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/strangeberry/jmdns/tools/Browser$2;

    invoke-direct {v1, p0, v0}, Lcom/strangeberry/jmdns/tools/Browser$2;-><init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V

    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESOLVED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v1}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmmdns:Ljavax/jmdns/JmmDNS;

    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljavax/jmdns/JmmDNS;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/strangeberry/jmdns/tools/Browser;->dislayInfo([Ljavax/jmdns/ServiceInfo;)V

    :cond_0
    return-void
.end method

.method public serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/strangeberry/jmdns/tools/Browser$3;

    invoke-direct {v1, p0, v0}, Lcom/strangeberry/jmdns/tools/Browser$3;-><init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V

    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUBTYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RVBROWSER"

    return-object v0
.end method

.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALUE CHANGED: type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmmdns:Ljavax/jmdns/JmmDNS;

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljavax/jmdns/JmmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/DefaultListModel;->setSize(I)V

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmmdns:Ljavax/jmdns/JmmDNS;

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljavax/jmdns/JmmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE CHANGED: type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmmdns:Ljavax/jmdns/JmmDNS;

    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljavax/jmdns/JmmDNS;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/strangeberry/jmdns/tools/Browser;->dislayInfo([Ljavax/jmdns/ServiceInfo;)V

    goto :goto_0
.end method
