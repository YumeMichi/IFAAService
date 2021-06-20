.class Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;
.super Lorg/ifaa/aidl/manager/IfaaManagerService$Stub;
.source "IfaaManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;


# direct methods
.method constructor <init>(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-direct {p0}, Lorg/ifaa/aidl/manager/IfaaManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getDeviceModelImpl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnabled(I)I
    .locals 2

    .line 121
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getEnabledImpl(I)I

    move-result p0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEnabled type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IfaaManagerServiceImpl"

    invoke-static {v0, p1}, Lorg/ifaa/aidl/manager/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getExtInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getExtInfoImpl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIDList(I)[I
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getIDListImpl(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getSupportBIOTypes()I
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getSupportBIOTypesImpl()I

    move-result p0

    return p0
.end method

.method public getVersion()I
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->getVersionImpl()I

    move-result p0

    return p0
.end method

.method public processCmd([B)[B
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-static {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->access$000(Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public setExtInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->setExtInfoImpl(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startBIOManager(I)I
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl$1;->this$0:Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;

    invoke-virtual {p0, p1}, Lorg/ifaa/aidl/manager/IfaaManagerServiceImpl;->startBIOManagerImpl(I)I

    move-result p0

    return p0
.end method
