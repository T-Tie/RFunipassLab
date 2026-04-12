; ModuleID = '<stdin>'
source_filename = "/tmp/tmph1lbjpz2.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %m)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv40, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %p)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %q)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %p, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv46, %5
  br i1 %cmp14, label %for.cond16, label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body18 ], [ 0, %for.cond13 ]
  %6 = load i32, ptr %q, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp17 = icmp slt i64 %indvars.iv43, %7
  br i1 %cmp17, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv46, i64 %indvars.iv43
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond13, %for.inc83
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc83 ], [ 0, %for.cond13 ]
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp31 = icmp slt i64 %indvars.iv55, %9
  br i1 %cmp31, label %for.cond33, label %for.end85

for.cond33:                                       ; preds = %for.cond30, %for.inc80
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc80 ], [ 0, %for.cond30 ]
  %10 = load i32, ptr %q, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp34 = icmp slt i64 %indvars.iv52, %11
  br i1 %cmp34, label %for.body35, label %for.inc83

for.body35:                                       ; preds = %for.cond33
  %12 = load i32, ptr %m, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond40

for.cond40:                                       ; preds = %for.body42, %for.body35
  %13 = phi i32 [ %add, %for.body42 ], [ 0, %for.body35 ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body42 ], [ 0, %for.body35 ]
  %exitcond.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond.not, label %for.end57, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv55, i64 %indvars.iv49
  %14 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv49, i64 %indvars.iv52
  %15 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %14
  %add = add nsw i32 %13, %mul
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond40, !llvm.loop !15

for.end57:                                        ; preds = %for.cond40
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %16 = load i32, ptr %q, align 4, !tbaa !5
  %sub = add nsw i32 %16, -1
  %17 = zext i32 %sub to i64
  %cmp63 = icmp eq i64 %indvars.iv52, %17
  br i1 %cmp63, label %land.lhs.true, label %if.then76

land.lhs.true:                                    ; preds = %for.end57
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %sub64 = add nsw i32 %18, -1
  %19 = zext i32 %sub64 to i64
  %cmp65.not = icmp eq i64 %indvars.iv55, %19
  br i1 %cmp65.not, label %for.inc83, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %vtable.i31 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %add.ptr.i34 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i33
  %call.i35 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i34, i8 noundef signext 10)
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i35)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i36)
  br label %for.inc80

if.then76:                                        ; preds = %for.end57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !18
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %20 = load i64, ptr %gep, align 8, !tbaa !19
  %cmp.not.i = icmp eq i64 %20, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then76
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then76
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc80

for.inc80:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %if.then
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond33, !llvm.loop !30

for.inc83:                                        ; preds = %land.lhs.true, %for.cond33
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond30, !llvm.loop !31

for.end85:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !21, i64 16}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
