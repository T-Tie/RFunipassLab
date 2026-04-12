; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk__a9itn.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %word = alloca [500 x [50 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %a, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 25000, ptr nonnull %word) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %while.cond

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #7
  %2 = trunc i64 %call5 to i32
  %conv = add i32 %2, 1
  %arrayidx7 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %conv, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %for.cond, %for.end50
  %3 = phi i32 [ %.pre, %for.end50 ], [ %0, %for.cond ]
  %x.0 = phi i32 [ %dec, %for.end50 ], [ 0, %for.cond ]
  %4 = sext i32 %x.0 to i64
  br label %while.cond8

while.cond8:                                      ; preds = %while.body10, %while.cond
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %while.body10 ], [ %4, %while.cond ]
  %count.1 = phi i32 [ %add13, %while.body10 ], [ 0, %while.cond ]
  %cmp9 = icmp slt i32 %count.1, 82
  br i1 %cmp9, label %while.body10, label %if.end34

while.body10:                                     ; preds = %while.cond8
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %indvars.iv58
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %add13 = add nsw i32 %5, %count.1
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next59 to i32
  %exitcond = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond, label %for.cond23, label %while.cond8, !llvm.loop !12

for.cond23:                                       ; preds = %while.body10, %for.body25
  %indvars.iv.next66.sink = phi i64 [ %indvars.iv.next66, %for.body25 ], [ %4, %while.body10 ]
  %arrayidx28 = getelementptr inbounds [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv.next66.sink
  %call.i.i26 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx28) #6
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx28, i64 noundef %call.i.i26)
  %indvars.iv.next66 = add nsw i64 %indvars.iv.next66.sink, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp24 = icmp slt i64 %indvars.iv.next66, %7
  br i1 %cmp24, label %for.body25, label %while.end52

for.body25:                                       ; preds = %for.cond23
  %call1.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.cond23, !llvm.loop !13

if.end34:                                         ; preds = %while.cond8
  %8 = trunc nsw i64 %indvars.iv58 to i32
  %dec = add nsw i32 %8, -1
  %arrayidx36 = getelementptr inbounds [500 x [50 x i8]], ptr %word, i64 0, i64 %4
  %call.i.i32 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx36) #6
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx36, i64 noundef %call.i.i32)
  %9 = sext i32 %dec to i64
  br label %for.cond40

for.cond40:                                       ; preds = %for.body42, %if.end34
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body42 ], [ %4, %if.end34 ]
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1
  %cmp41 = icmp slt i64 %indvars.iv.next62, %9
  br i1 %cmp41, label %for.body42, label %for.end50

for.body42:                                       ; preds = %for.cond40
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %arrayidx45 = getelementptr inbounds [500 x [50 x i8]], ptr %word, i64 0, i64 %indvars.iv.next62
  %call.i.i40 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx45) #6
  %call1.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx45, i64 noundef %call.i.i40)
  br label %for.cond40, !llvm.loop !14

for.end50:                                        ; preds = %for.cond40
  %vtable.i46 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i47 = getelementptr i8, ptr %vtable.i46, i64 -24
  %vbase.offset.i48 = load i64, ptr %vbase.offset.ptr.i47, align 8
  %add.ptr.i49 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i48
  %call.i50 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i49, i8 noundef signext 10)
  %call1.i51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i50)
  %call.i.i52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i51)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !17

while.end52:                                      ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 25000, ptr nonnull %word) #6
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = distinct !{!17, !10, !11}
