; ModuleID = '<stdin>'
source_filename = "/tmp/tmpx3vckvke.cpp"
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
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [100 x [100 x i8]], align 16
  %b = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 dereferenceable(10000) %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 captures(none) dereferenceable(10000) %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(10000) %b, i64 noundef 10000)
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %call2 = call i64 @strlen(ptr noundef %b) #6
  %cmp = icmp ult i64 %conv, %call2
  %1 = load i32, ptr %j, align 4, !tbaa !5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [10000 x i8], ptr %b, i64 0, i64 %conv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %idxprom7 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom7
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %3 to i64
  %arrayidx10 = getelementptr inbounds [100 x i8], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i8 %2, ptr %arrayidx10, align 1, !tbaa !9
  %inc11 = add nsw i32 %3, 1
  store i32 %inc11, ptr %k, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %inc12 = add nsw i32 %0, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %idxprom13 = sext i32 %1 to i64
  %arrayidx14 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom13
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx14)
  %sub = sub nsw i32 %1, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end
  %4 = phi i32 [ %dec, %for.inc25 ], [ %sub, %for.end ]
  %cmp18 = icmp sge i32 %4, 0
  br i1 %cmp18, label %for.inc25, label %for.end26

for.inc25:                                        ; preds = %for.cond17
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 32)
  %idxprom21 = sext i32 %4 to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom21
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef nonnull %arrayidx22)
  %dec = add nsw i32 %4, -1
  br label %for.cond17, !llvm.loop !14

for.end26:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
