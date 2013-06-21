.class public Ljavax/jmdns/test/JmDNSTest;
.super Ljava/lang/Object;


# static fields
.field private static final serviceKey:Ljava/lang/String; = "srvname"


# instance fields
.field private service:Ljavax/jmdns/ServiceInfo;

.field private serviceListenerMock:Ljavax/jmdns/ServiceListener;

.field private typeListenerMock:Ljavax/jmdns/ServiceTypeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setup()V
    .locals 7
    .annotation runtime Lorg/junit/Before;
    .end annotation

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

    const/16 v2, 0x50

    const/4 v5, 0x1

    move v4, v3

    invoke-static/range {v0 .. v6}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    const-class v0, Ljavax/jmdns/ServiceTypeListener;

    invoke-static {v0}, Lorg/easymock/EasyMock;->createMock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceTypeListener;

    iput-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->typeListenerMock:Ljavax/jmdns/ServiceTypeListener;

    const-string v0, "ServiceListener"

    const-class v1, Ljavax/jmdns/ServiceListener;

    invoke-static {v0, v1}, Lorg/easymock/EasyMock;->createNiceMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceListener;

    iput-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    return-void
.end method

.method public testCreate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->close()V

    return-void
.end method

.method public testCreateINet()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->close()V

    return-void
.end method

.method public testListMyService()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v2, "We should see the service we just registered: "

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v2, v3, v4}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    iget-object v2, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    throw v0
.end method

.method public testListenForMyService()V
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
    new-instance v2, Lorg/easymock/Capture;

    invoke-direct {v2}, Lorg/easymock/Capture;-><init>()V

    new-instance v3, Lorg/easymock/Capture;

    invoke-direct {v3}, Lorg/easymock/Capture;-><init>()V

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-static {v2}, Lorg/easymock/EasyMock;->capture(Lorg/easymock/Capture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-interface {v4, v0}, Ljavax/jmdns/ServiceListener;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-static {v3}, Lorg/easymock/EasyMock;->capture(Lorg/easymock/Capture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-interface {v4, v0}, Ljavax/jmdns/ServiceListener;->serviceResolved(Ljavax/jmdns/ServiceEvent;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    aput-object v5, v0, v4

    invoke-static {v0}, Lorg/easymock/EasyMock;->replay([Ljava/lang/Object;)V

    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v1, v0, v4}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    const-string v0, "We did not get the service added event."

    invoke-virtual {v2}, Lorg/easymock/Capture;->hasCaptured()Z

    move-result v4

    invoke-static {v0, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lorg/easymock/Capture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v2, "We did not get the right name for the added service:"

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "We did not get the right type for the added service:"

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "We did not get the right fully qualified name for the added service:"

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/jmdns/JmDNS;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "We did not get the service resolved event."

    invoke-virtual {v3}, Lorg/easymock/Capture;->hasCaptured()Z

    move-result v2

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    aput-object v4, v0, v2

    invoke-static {v0}, Lorg/easymock/EasyMock;->verify([Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/easymock/Capture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v2, "Did not get the expected service info: "

    iget-object v3, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-static {v2, v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    throw v0
.end method

.method public testListenForMyServiceAndList()V
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
    new-instance v2, Lorg/easymock/Capture;

    invoke-direct {v2}, Lorg/easymock/Capture;-><init>()V

    new-instance v3, Lorg/easymock/Capture;

    invoke-direct {v3}, Lorg/easymock/Capture;-><init>()V

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-static {v2}, Lorg/easymock/EasyMock;->capture(Lorg/easymock/Capture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-interface {v4, v0}, Ljavax/jmdns/ServiceListener;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-static {v3}, Lorg/easymock/EasyMock;->capture(Lorg/easymock/Capture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-interface {v4, v0}, Ljavax/jmdns/ServiceListener;->serviceResolved(Ljavax/jmdns/ServiceEvent;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    aput-object v5, v0, v4

    invoke-static {v0}, Lorg/easymock/EasyMock;->replay([Ljava/lang/Object;)V

    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v1, v0, v4}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    const-string v0, "We did not get the service added event."

    invoke-virtual {v2}, Lorg/easymock/Capture;->hasCaptured()Z

    move-result v4

    invoke-static {v0, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lorg/easymock/Capture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v2, "We did not get the right name for the resolved service:"

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "We did not get the right type for the resolved service:"

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v2, "We did not get the expected number of services: "

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v2, v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    const-string v2, "The service returned was not the one expected"

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-static {v2, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "We did not get the service resolved event."

    invoke-virtual {v3}, Lorg/easymock/Capture;->hasCaptured()Z

    move-result v2

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    aput-object v4, v0, v2

    invoke-static {v0}, Lorg/easymock/EasyMock;->verify([Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/easymock/Capture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v2, "Did not get the expected service info: "

    iget-object v3, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-static {v2, v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    throw v0
.end method

.method public testListenForServiceOnOtherRegistry()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lorg/easymock/Capture;

    invoke-direct {v3}, Lorg/easymock/Capture;-><init>()V

    new-instance v4, Lorg/easymock/Capture;

    invoke-direct {v4}, Lorg/easymock/Capture;-><init>()V

    iget-object v2, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-static {v3}, Lorg/easymock/EasyMock;->capture(Lorg/easymock/Capture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-interface {v2, v0}, Ljavax/jmdns/ServiceListener;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    iget-object v2, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-static {v4}, Lorg/easymock/EasyMock;->capture(Lorg/easymock/Capture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-interface {v2, v0}, Ljavax/jmdns/ServiceListener;->serviceResolved(Ljavax/jmdns/ServiceEvent;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    aput-object v5, v0, v2

    invoke-static {v0}, Lorg/easymock/EasyMock;->replay([Ljava/lang/Object;)V

    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v2, v0, v5}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    const-string v0, "We did not get the service added event."

    invoke-virtual {v3}, Lorg/easymock/Capture;->hasCaptured()Z

    move-result v5

    invoke-static {v0, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lorg/easymock/Capture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "We did not get the right name for the resolved service:"

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "We did not get the right type for the resolved service:"

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "We did not get the service resolved event."

    invoke-virtual {v4}, Lorg/easymock/Capture;->hasCaptured()Z

    move-result v3

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->serviceListenerMock:Ljavax/jmdns/ServiceListener;

    aput-object v5, v0, v3

    invoke-static {v0}, Lorg/easymock/EasyMock;->verify([Ljava/lang/Object;)V

    invoke-virtual {v4}, Lorg/easymock/Capture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "Did not get the expected service info: "

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
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

.method public testQueryMyService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    iget-object v2, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    throw v0
.end method

.method public testRegisterAndListServiceOnOtherRegistry()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "Registry"

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v3, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    const-string v0, "Listener"

    invoke-static {v0}, Ljavax/jmdns/JmDNS;->create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    const-wide/16 v4, 0x1770

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v4, "Did not get the expected services listed:"

    const/4 v5, 0x1

    array-length v6, v0

    invoke-static {v4, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    const-string v4, "Did not get the expected service type:"

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Did not get the expected service name:"

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Did not get the expected service fully qualified name:"

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;

    const-string v4, "Did not get the expected service info: "

    iget-object v5, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-static {v4, v5, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "The service was not cancelled after the close:"

    const/4 v4, 0x0

    array-length v0, v0

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

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

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_0
.end method

.method public testRegisterService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/jmdns/JmDNS;->close()V

    :cond_1
    throw v0
.end method

.method public testTwoMulticastPortsAtOnce()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "ping"

    const-string v4, "pong"

    const-string v1, "224.0.0.252"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    new-instance v3, Ljava/net/MulticastSocket;

    const/16 v1, 0x1f75

    invoke-direct {v3, v1}, Ljava/net/MulticastSocket;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/net/MulticastSocket;

    const/16 v6, 0x1f75

    invoke-direct {v1, v6}, Ljava/net/MulticastSocket;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    new-instance v2, Ljava/net/DatagramPacket;

    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1f75

    invoke-direct {v2, v6, v7, v5, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v7, "Expected the second socket to recieve the same message the first socket sent"

    invoke-static {v7, v0, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v0, Ljava/net/DatagramPacket;

    const-string v2, "UTF-8"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x1f75

    invoke-direct {v0, v2, v6, v5, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-virtual {v3, v0}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "Expected the first socket to recieve the same message the second socket sent"

    invoke-static {v0, v4, v2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public testWaitAndQueryForServiceOnOtherRegistry()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v2

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v2, v0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    iget-object v0, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    const-string v3, "Did not get the expected service info: "

    iget-object v4, p0, Ljavax/jmdns/test/JmDNSTest;->service:Ljavax/jmdns/ServiceInfo;

    invoke-static {v3, v4, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
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

    move-object v1, v2

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
