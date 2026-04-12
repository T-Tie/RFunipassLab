; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8bzy3oo8.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %word = alloca [40 x i8], align 16
  %first = alloca [40 x i8], align 16
  %sum = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %word) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %first) #6
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %sum) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %sum, i8 0, i64 4000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %11, %for.end ]
  %i.0 = phi i32 [ 1, %entry ], [ %i.2, %for.end ]
  %j.0 = phi i32 [ 0, %entry ], [ %j.2, %for.end ]
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end55, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %first)
  %inc = add nsw i32 %i.0, 1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %sum, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %first) #6
  %2 = trunc i64 %call3 to i32
  %3 = add i32 %1, 1
  %conv5 = add i32 %3, %2
  store i32 %conv5, ptr %arrayidx, align 4, !tbaa !5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %first, i64 noundef %call3)
  br label %for.cond10

for.cond10:                                       ; preds = %if.end, %for.body
  %i.1 = phi i32 [ %inc, %for.body ], [ %inc17, %if.end ]
  %j.1 = phi i32 [ %j.0, %for.body ], [ %j.3, %if.end ]
  %idxprom11 = sext i32 %j.1 to i64
  %arrayidx12 = getelementptr inbounds [1000 x i32], ptr %sum, i64 0, i64 %idxprom11
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %4, 82
  br i1 %cmp13, label %for.body14, label %for.cond10.for.end_crit_edge

for.cond10.for.end_crit_edge:                     ; preds = %for.cond10
  %.pre22 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.end

for.body14:                                       ; preds = %for.cond10
  %call16 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %word)
  %inc17 = add nsw i32 %i.1, 1
  %call22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #7
  %5 = trunc i64 %call22 to i32
  %6 = add nsw i32 %4, 1
  %conv25 = add i32 %6, %5
  store i32 %conv25, ptr %arrayidx12, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %conv25, 82
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %for.body14
  %call1.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %call.i.i15 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #6
  %call1.i16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %word, i64 noundef %call.i.i15)
  br label %if.end

if.else:                                          ; preds = %for.body14
  %inc34 = add nsw i32 %j.1, 1
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i19 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i19)
  %call.i.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i20)
  %call.i.i17 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #6
  %call1.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %word, i64 noundef %call.i.i17)
  %idxprom38 = sext i32 %inc34 to i64
  %arrayidx39 = getelementptr inbounds [1000 x i32], ptr %sum, i64 0, i64 %idxprom38
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %call42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #7
  %8 = trunc i64 %call42 to i32
  %9 = add i32 %7, 1
  %conv45 = add i32 %9, %8
  store i32 %conv45, ptr %arrayidx39, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %j.3 = phi i32 [ %j.1, %if.then ], [ %inc34, %if.else ]
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp48 = icmp eq i32 %i.1, %10
  br i1 %cmp48, label %for.end, label %for.cond10, !llvm.loop !11

for.end:                                          ; preds = %if.end, %for.cond10.for.end_crit_edge
  %11 = phi i32 [ %.pre22, %for.cond10.for.end_crit_edge ], [ %i.1, %if.end ]
  %i.2 = phi i32 [ %i.1, %for.cond10.for.end_crit_edge ], [ %inc17, %if.end ]
  %j.2 = phi i32 [ %j.1, %for.cond10.for.end_crit_edge ], [ %j.3, %if.end ]
  %sub51 = add nsw i32 %i.2, -1
  %cmp52 = icmp eq i32 %sub51, %11
  br i1 %cmp52, label %for.end55, label %for.cond, !llvm.loop !14

for.end55:                                        ; preds = %for.end, %for.cond
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %sum) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %first) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %word) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
