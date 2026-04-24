; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8v7woiq6.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mona = alloca i32, align 4
  %monb = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mona) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monb) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc28, %for.inc27 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %mona)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %monb)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp4 = icmp ne i32 %2, 0
  %rem5 = srem i32 %1, 100
  %cmp6.not = icmp eq i32 %rem5, 0
  %or.cond = or i1 %cmp4, %cmp6.not
  br i1 %or.cond, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.body
  %rem7 = srem i32 %1, 400
  %cmp8 = icmp eq i32 %rem7, 0
  %3 = select i1 %cmp8, i32 29, i32 28
  br label %lor.end

lor.end:                                          ; preds = %for.body, %lor.rhs
  %conv = phi i32 [ %3, %lor.rhs ], [ 29, %for.body ]
  %4 = load i32, ptr %mona, align 4, !tbaa !5
  %5 = load i32, ptr %monb, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %4, %5
  br i1 %cmp9, label %if.end, label %if.else

if.else:                                          ; preds = %lor.end
  store i32 %5, ptr %mona, align 4, !tbaa !5
  store i32 %4, ptr %monb, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.else
  %6 = phi i32 [ %4, %lor.end ], [ %5, %if.else ]
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 %5)
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.end
  %mon.0 = phi i32 [ %6, %if.end ], [ %inc, %for.inc ]
  %days.0 = phi i32 [ 0, %if.end ], [ %days.1, %for.inc ]
  %exitcond.not = icmp eq i32 %mon.0, %smax
  br i1 %exitcond.not, label %for.end, label %for.body12

for.body12:                                       ; preds = %for.cond10
  switch i32 %mon.0, label %for.inc [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 12, label %sw.bb
    i32 4, label %sw.bb13
    i32 6, label %sw.bb13
    i32 9, label %sw.bb13
    i32 11, label %sw.bb13
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %for.body12, %for.body12, %for.body12, %for.body12, %for.body12, %for.body12, %for.body12
  %add = add nsw i32 %days.0, 31
  br label %for.inc

sw.bb13:                                          ; preds = %for.body12, %for.body12, %for.body12, %for.body12
  %add14 = add nsw i32 %days.0, 30
  br label %for.inc

sw.bb15:                                          ; preds = %for.body12
  %add17 = add nsw i32 %days.0, %conv
  br label %for.inc

for.inc:                                          ; preds = %for.body12, %sw.bb, %sw.bb13, %sw.bb15
  %days.1 = phi i32 [ %days.0, %for.body12 ], [ %add, %sw.bb ], [ %add14, %sw.bb13 ], [ %add17, %sw.bb15 ]
  %inc = add i32 %mon.0, 1
  br label %for.cond10, !llvm.loop !9

for.end:                                          ; preds = %for.cond10
  %rem18 = srem i32 %days.0, 7
  %cmp19 = icmp eq i32 %rem18, 0
  br i1 %cmp19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %for.end
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %for.inc27

if.else23:                                        ; preds = %for.end
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %for.inc27

for.inc27:                                        ; preds = %if.then20, %if.else23
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i11 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i11)
  %call.i.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i12)
  %inc28 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !14

for.end29:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mona) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = distinct !{!14, !10, !11}
