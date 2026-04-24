; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy8_8nxfh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc116, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc117, %for.inc116 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end118, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv15, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %sub = add nsw i32 %1, -1
  %smax69 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count70 = zext nneg i32 %smax69 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc111
  %indvars.iv65 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next66, %for.inc111 ]
  %indvars.iv43 = phi i32 [ %sub, %for.cond13.preheader ], [ %indvars.iv.next44, %for.inc111 ]
  %indvars.iv22 = phi i32 [ %1, %for.cond13.preheader ], [ %indvars.iv.next23, %for.inc111 ]
  %m.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc111 ]
  %smax62 = call i32 @llvm.smax.i32(i32 %indvars.iv43, i32 noundef 0)
  %smax45 = call i32 @llvm.smax.i32(i32 %indvars.iv43, i32 noundef 1)
  %exitcond71.not = icmp eq i64 %indvars.iv65, %wide.trip.count70
  br i1 %exitcond71.not, label %for.inc116, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond13
  %smax51 = call i32 @llvm.smax.i32(i32 %indvars.iv22, i32 noundef 0)
  %5 = sub nsw i64 %2, %indvars.iv65
  %wide.trip.count27 = zext nneg i32 %smax51 to i64
  %wide.trip.count = zext i32 %indvars.iv22 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc35
  %indvars.iv24 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next25, %for.inc35 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.cond38.preheader, label %for.body20

for.cond38.preheader:                             ; preds = %for.cond17
  %wide.trip.count32 = zext i32 %indvars.iv22 to i64
  br label %for.cond38

for.body20:                                       ; preds = %for.cond17
  %arrayidx.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv24
  %6 = load i32, ptr %arrayidx.i, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body20
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.body.i ], [ 0, %for.body20 ]
  %t.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %6, %for.body20 ]
  %exitcond12.not.i = icmp eq i64 %indvars.iv7.i, %5
  br i1 %exitcond12.not.i, label %for.cond23.preheader, label %for.body.i

for.cond23.preheader:                             ; preds = %for.cond.i
  br label %for.cond23

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx6.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv24, i64 %indvars.iv7.i
  %7 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5, !invariant.load !13
  %spec.select.i = call i32 @llvm.smin.i32(i32 %t.0.i, i32 %7)
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  br label %for.cond.i, !llvm.loop !14

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc32
  %indvars.iv18 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next19, %for.inc32 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.inc35, label %for.inc32

for.inc32:                                        ; preds = %for.cond23
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv24, i64 %indvars.iv18
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !13
  %sub31 = sub nsw i32 %8, %t.0.i
  store i32 %sub31, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond23, !llvm.loop !15

for.inc35:                                        ; preds = %for.cond23
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond17, !llvm.loop !16

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc57
  %indvars.iv34 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next35, %for.inc57 ]
  %exitcond39.not = icmp eq i64 %indvars.iv34, %wide.trip.count27
  br i1 %exitcond39.not, label %for.end59, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx15.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %9 = load i32, ptr %arrayidx15.i, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond16.i

for.cond16.i:                                     ; preds = %for.body19.i, %for.body41
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body19.i ], [ 0, %for.body41 ]
  %t.3.i = phi i32 [ %spec.select3.i, %for.body19.i ], [ %9, %for.body41 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %5
  br i1 %exitcond.not.i, label %for.cond45.preheader, label %for.body19.i

for.cond45.preheader:                             ; preds = %for.cond16.i
  br label %for.cond45

for.body19.i:                                     ; preds = %for.cond16.i
  %arrayidx23.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i, i64 %indvars.iv34
  %10 = load i32, ptr %arrayidx23.i, align 4, !tbaa !5, !invariant.load !13
  %spec.select3.i = call i32 @llvm.smin.i32(i32 %t.3.i, i32 %10)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond16.i, !llvm.loop !17

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc54
  %indvars.iv29 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next30, %for.inc54 ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count32
  br i1 %exitcond33.not, label %for.inc57, label %for.inc54

for.inc54:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv34
  %11 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !13
  %sub53 = sub nsw i32 %11, %t.3.i
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond45, !llvm.loop !18

for.inc57:                                        ; preds = %for.cond45
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond38, !llvm.loop !19

for.end59:                                        ; preds = %for.cond38
  %12 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %wide.trip.count46 = zext nneg i32 %smax45 to i64
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc83, %for.end59
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc83 ], [ 0, %for.end59 ]
  %exitcond53.not = icmp eq i64 %indvars.iv48, %wide.trip.count27
  br i1 %exitcond53.not, label %for.cond86.preheader, label %for.cond66

for.cond86.preheader:                             ; preds = %for.cond62
  %wide.trip.count63 = zext nneg i32 %smax62 to i64
  %wide.trip.count57 = zext i32 %indvars.iv43 to i64
  br label %for.cond86

for.cond66:                                       ; preds = %for.cond62, %for.inc80
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc80 ], [ 1, %for.cond62 ]
  %exitcond47.not = icmp eq i64 %indvars.iv40, %wide.trip.count46
  br i1 %exitcond47.not, label %for.inc83, label %for.inc80

for.inc80:                                        ; preds = %for.cond66
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %arrayidx75 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %indvars.iv.next41
  %13 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !13
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %indvars.iv40
  store i32 %13, ptr %arrayidx79, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !20

for.inc83:                                        ; preds = %for.cond66
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond62, !llvm.loop !21

for.cond86:                                       ; preds = %for.cond86.preheader, %for.inc108
  %indvars.iv59 = phi i64 [ 0, %for.cond86.preheader ], [ %indvars.iv.next60, %for.inc108 ]
  %exitcond64.not = icmp eq i64 %indvars.iv59, %wide.trip.count63
  br i1 %exitcond64.not, label %for.inc111, label %for.cond91

for.cond91:                                       ; preds = %for.cond86, %for.inc105
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc105 ], [ 1, %for.cond86 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count57
  br i1 %exitcond58.not, label %for.inc108, label %for.inc105

for.inc105:                                       ; preds = %for.cond91
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %arrayidx100 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next55, i64 %indvars.iv59
  %14 = load i32, ptr %arrayidx100, align 4, !tbaa !5, !invariant.load !13
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv54, i64 %indvars.iv59
  store i32 %14, ptr %arrayidx104, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !22

for.inc108:                                       ; preds = %for.cond91
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond86, !llvm.loop !23

for.inc111:                                       ; preds = %for.cond86
  %add = add nsw i32 %12, %m.0
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %indvars.iv.next23 = add i32 %indvars.iv22, -1
  %indvars.iv.next44 = add i32 %indvars.iv43, -1
  br label %for.cond13, !llvm.loop !24

for.inc116:                                       ; preds = %for.cond13
  %call114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0)
  %call115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call114, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc117 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !25

for.end118:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3minPA100_iiii(ptr nofree noundef nonnull readonly captures(none) %a, i32 noundef %s, i32 noundef %l, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %s, 0
  %idxprom = sext i32 %l to i64
  %smax10 = call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count11 = zext nneg i32 %smax10 to i64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body ], [ 0, %if.then ]
  %t.0 = phi i32 [ %spec.select, %for.body ], [ %0, %if.then ]
  %exitcond12.not = icmp eq i64 %indvars.iv7, %wide.trip.count11
  br i1 %exitcond12.not, label %if.end34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom, i64 %indvars.iv7
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !13
  %spec.select = tail call i32 @llvm.smin.i32(i32 %t.0, i32 %1)
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !14

if.else:                                          ; preds = %entry
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond16

for.cond16:                                       ; preds = %for.body19, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %if.else ]
  %t.3 = phi i32 [ %spec.select3, %for.body19 ], [ %2, %if.else ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count11
  br i1 %exitcond.not, label %if.end34, label %for.body19

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv, i64 %idxprom
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !13
  %spec.select3 = tail call i32 @llvm.smin.i32(i32 %t.3, i32 %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond16, !llvm.loop !17

if.end34:                                         ; preds = %for.cond16, %for.cond
  %t.2 = phi i32 [ %t.0, %for.cond ], [ %t.3, %for.cond16 ]
  ret i32 %t.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
