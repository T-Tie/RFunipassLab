; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkljy3bak.cpp"
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
  %i = alloca i32, align 4
  %a = alloca [100 x [100 x i8]], align 16
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef %a) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arrayidx, i64 noundef 101, i8 noundef signext 32)
  %vtable = load ptr, ptr %call, align 8, !tbaa !9
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !11
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %.sink = phi i32 [ 0, %while.end ], [ %inc13, %for.inc ]
  %cmp = icmp slt i32 %.sink, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %sub = sub nsw i32 %0, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom2
  %idxprom4 = sext i32 %.sink to i64
  %arrayidx5 = getelementptr inbounds [100 x i8], ptr %arrayidx3, i64 0, i64 %idxprom4
  %1 = load i8, ptr %arrayidx5, align 1, !tbaa !15
  %conv = sext i8 %1 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %sub10 = sub nsw i32 %.sink, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [100 x i8], ptr %arrayidx3, i64 0, i64 %idxprom11
  store i8 0, ptr %arrayidx12, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc13 = add nsw i32 %.sink, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %sub15 = sub nsw i32 %0, 1
  %cmp16 = icmp slt i32 %2, %sub15
  br i1 %cmp16, label %for.inc25, label %for.end27

for.inc25:                                        ; preds = %for.cond14
  %sub18 = sub nsw i32 %0, %2
  %sub19 = sub nsw i32 %sub18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom20
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arrayidx21)
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call23, i8 noundef signext 32)
  %inc26 = add nsw i32 %2, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !17

for.end27:                                        ; preds = %for.cond14
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %a)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!11 = !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
