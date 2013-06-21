.class public Ljavax/jmdns/test/TextUpdateTest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/test/TextUpdateTest$MockListener;
    }
.end annotation


# static fields
.field private static final serviceKey:Ljava/lang/String; = "srvname"


# instance fields
.field private printer:Ljavax/jmdns/ServiceInfo;

.field private service:Ljavax/jmdns/ServiceInfo;

.field private serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setup()V
    .locals 15
    .annotation runtime Lorg/junit/Before;
    .end annotation

    const/16 v2, 0x50

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "Test hypothetical web server"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "srvname"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_html._tcp.local."

    const-string v1, "apache-someuniqueid"

    move v4, v3

    invoke-static/range {v0 .. v6}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    const-string v0, "Test hypothetical print server"

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    const-string v1, "srvname"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "_html._tcp.local."

    const-string v8, "printer-someuniqueid"

    const-string v9, "_printer"

    move v10, v2

    move v11, v3

    move v12, v3

    move v13, v5

    move-object v14, v6

    invoke-static/range {v7 .. v14}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->printer:Ljavax/jmdns/ServiceInfo;

    new-instance v0, Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-direct {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    return-void
.end method

.method public testListenForTextUpdateOnOtherRegistry()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "Listener"

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v2, v0, v3}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    const-string v0, "Registry"

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesAdded()Ljava/util/List;

    move-result-object v0

    const-string v3, "We did not get the service added event."

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "We did not get the right name for the resolved service:"

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "We did not get the right type for the resolved service:"

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesResolved()Ljava/util/List;

    move-result-object v0

    const-string v3, "We did not get the service resolved event."

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "Did not get the expected service info: "

    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "Did not get the expected service info: "

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "Did not get the expected service info text: "

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    const-string v5, "srvname"

    invoke-virtual {v4, v5}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "srvname"

    invoke-virtual {v0, v5}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->reset()V

    const-string v3, "Test improbable web server"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "srvname"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4, v0}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesResolved()Ljava/util/List;

    move-result-object v0

    const-string v4, "We did not get the service text updated event."

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v4, "Did not get the expected service info text: "

    const-string v5, "srvname"

    invoke-virtual {v0, v5}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->reset()V

    const-string v3, "Test more improbable web server"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "srvname"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4, v0}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesResolved()Ljava/util/List;

    move-result-object v0

    const-string v4, "We did not get the service text updated event."

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v4, "Did not get the expected service info text: "

    const-string v5, "srvname"

    invoke-virtual {v0, v5}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->reset()V

    const-string v3, "Test even more improbable web server"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "srvname"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4, v0}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesResolved()Ljava/util/List;

    move-result-object v0

    const-string v4, "We did not get the service text updated event."

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v4, "Did not get the expected service info text: "

    const-string v5, "srvname"

    invoke-virtual {v0, v5}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public testRenewExpiringRequests()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const/16 v6, 0xe10

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x3c

    :try_start_0
    invoke-static {v2}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->setDefaultTTL(I)V

    const-string v2, "Listener"

    invoke-static {v2}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v2, v4, v5}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    const-string v4, "Registry"

    invoke-static {v4}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v4}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v4}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesAdded()Ljava/util/List;

    move-result-object v4

    const-string v5, "We did not get the service added event."

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_0
    invoke-static {v5, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "We should see the service we just registered: "

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    iget-object v3, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/32 v3, 0x1d4c0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "We should see the service after the renewal: "

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    iget-object v3, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    invoke-static {v6}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->setDefaultTTL(I)V

    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_4
    invoke-static {v6}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->setDefaultTTL(I)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public testSubtype()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "Listener"

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v2, v0, v3}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    const-string v0, "Registry"

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->printer:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesAdded()Ljava/util/List;

    move-result-object v0

    const-string v3, "We did not get the service added event."

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "We did not get the right name for the resolved service:"

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->printer:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "We did not get the right type for the resolved service:"

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->printer:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->servicesResolved()Ljava/util/List;

    move-result-object v0

    const-string v3, "We did not get the service resolved event."

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "Did not get the expected service info: "

    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "Did not get the expected service info: "

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->printer:Ljavax/jmdns/ServiceInfo;

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "Did not get the expected service info subtype: "

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->printer:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Did not get the expected service info text: "

    iget-object v4, p0, Ljavax/jmdns/test/TextUpdateTest;->printer:Ljavax/jmdns/ServiceInfo;

    const-string v5, "srvname"

    invoke-virtual {v4, v5}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "srvname"

    invoke-virtual {v0, v5}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/test/TextUpdateTest;->serviceListenerMock:Ljavax/jmdns/test/TextUpdateTest$MockListener;

    invoke-virtual {v0}, Ljavax/jmdns/test/TextUpdateTest$MockListener;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
