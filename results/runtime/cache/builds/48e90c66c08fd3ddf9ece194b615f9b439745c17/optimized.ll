; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7ipk7_v8.cpp"
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
  %N = alloca i32, align 4
  %str = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #7
  call void @llvm.lifetime.start.p0(i64 noundef 200, ptr noundef nonnull align 16 captures(none) dereferenceable(200) %str) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(200) %str, i8 noundef 0, i64 noundef 200, i1 noundef false) #8
  store i8 49, ptr %str, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %.pr = load i32, ptr %N, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i32 [ %dec, %while.body ], [ %.pr, %entry ]
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_Z8multiplyPci(ptr nofree noundef nonnull align 16 dereferenceable(200) %str, i32 noundef 2) #9
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %N, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull align 16 dereferenceable(200) %str) #9
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(200) %str, i64 noundef %call.i.i)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12, !invariant.load !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !14
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i1)
  %call.i.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i2)
  call void @llvm.lifetime.end.p0(i64 noundef 200, ptr noundef nonnull captures(none) %str) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nosync nounwind memory(read, argmem: readwrite) uwtable
define dso_local void @_Z8multiplyPci(ptr nofree noundef nonnull dereferenceable(1) %str, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %num = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %num) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(800) %num, i8 noundef 0, i64 noundef 800, i1 noundef false) #11
  %call = tail call i64 @strlen(ptr nofree noundef nonnull readonly dereferenceable(1) %str) #12
  %add.ptr3.ptr = getelementptr inbounds nuw i8, ptr %num, i64 796
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %sPtr.0.idx.in = phi i64 [ %call, %entry ], [ %sPtr.0.idx, %while.body ]
  %nPtr.0 = phi ptr [ %add.ptr3.ptr, %entry ], [ %incdec.ptr5, %while.body ]
  %cmp.not = icmp eq i64 %sPtr.0.idx.in, 0
  br i1 %cmp.not, label %while.cond8, label %while.body

while.body:                                       ; preds = %while.cond
  %sPtr.0.idx = add nsw i64 %sPtr.0.idx.in, -1
  %sPtr.0.ptr = getelementptr inbounds i8, ptr %str, i64 %sPtr.0.idx
  %0 = load i8, ptr %sPtr.0.ptr, align 1, !tbaa !15, !invariant.load !14
  %conv = sext i8 %0 to i32
  %sub = add nsw i32 %conv, -48
  %incdec.ptr5 = getelementptr inbounds i8, ptr %nPtr.0, i64 -4
  store i32 %sub, ptr %nPtr.0, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !16

while.cond8:                                      ; preds = %while.cond, %while.body12
  %jump.0 = phi i32 [ %div, %while.body12 ], [ 0, %while.cond ]
  %nPtr.1.idx = phi i64 [ %nPtr.1.add, %while.body12 ], [ 796, %while.cond ]
  %cmp11.not = icmp eq i64 %nPtr.1.idx, -4
  br i1 %cmp11.not, label %while.cond17, label %while.body12

while.body12:                                     ; preds = %while.cond8
  %nPtr.1.ptr = getelementptr inbounds i8, ptr %num, i64 %nPtr.1.idx
  %1 = load i32, ptr %nPtr.1.ptr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %n
  %rem = srem i32 %mul, 10
  %add = add nsw i32 %rem, %jump.0
  %div = sdiv i32 %mul, 10
  %nPtr.1.add = add nsw i64 %nPtr.1.idx, -4
  store i32 %add, ptr %nPtr.1.ptr, align 4, !tbaa !5
  br label %while.cond8, !llvm.loop !17

while.cond17:                                     ; preds = %while.cond8, %while.cond17
  %nPtr.2.idx = phi i64 [ %nPtr.2.add, %while.cond17 ], [ 0, %while.cond8 ]
  %nPtr.2.ptr = getelementptr inbounds nuw i8, ptr %num, i64 %nPtr.2.idx
  %2 = load i32, ptr %nPtr.2.ptr, align 4, !tbaa !5, !invariant.load !14
  %cmp18 = icmp eq i32 %2, 0
  %nPtr.2.add = add nuw nsw i64 %nPtr.2.idx, 4
  br i1 %cmp18, label %while.cond17, label %while.cond22, !llvm.loop !18

while.cond22:                                     ; preds = %while.cond17, %while.body26
  %sPtr.1 = phi ptr [ %incdec.ptr30, %while.body26 ], [ %str, %while.cond17 ]
  %nPtr.3.idx = phi i64 [ %nPtr.3.add, %while.body26 ], [ %nPtr.2.idx, %while.cond17 ]
  %cmp25.not = icmp eq i64 %nPtr.3.idx, 800
  br i1 %cmp25.not, label %while.end31, label %while.body26

while.body26:                                     ; preds = %while.cond22
  %nPtr.3.ptr = getelementptr inbounds nuw i8, ptr %num, i64 %nPtr.3.idx
  %nPtr.3.add = add nuw nsw i64 %nPtr.3.idx, 4
  %3 = load i32, ptr %nPtr.3.ptr, align 4, !tbaa !5, !invariant.load !14
  %4 = trunc i32 %3 to i8
  %conv29 = add i8 %4, 48
  %incdec.ptr30 = getelementptr inbounds nuw i8, ptr %sPtr.1, i64 1
  store i8 %conv29, ptr %sPtr.1, align 1, !tbaa !15
  br label %while.cond22, !llvm.loop !19

while.end31:                                      ; preds = %while.cond22
  store i8 0, ptr %sPtr.1, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %num) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nosync nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nofree willreturn }
attributes #9 = { nounwind }
attributes #10 = { nofree nounwind }
attributes #11 = { nofree }
attributes #12 = { nosync nounwind willreturn memory(read) }

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
!14 = !{}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
